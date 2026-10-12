#include <windows.h>
#include <tsutil.h>
#include <userint.h>
#include <utility.h>
#include "lowlvlio.h"
#include "docdlgs.h"

//
// Scroll down to view a description of message generated during DLL creation
//
////////////////////////////////////////////////////////////
// Configuration Dialog support code
////////////////////////////////////////////////////////////

typedef struct 
    {
    CAObjHandle engine;
    CAObjHandle context;
    CAObjHandle contextPropObj;
    CAObjHandle sequenceFile;
    CAObjHandle mySequenceFile; // used with FindFile to find other docgen sequence files
    CAObjHandle docOptions;
    CAObjHandle docExecution;
    int         panel;
    } DocDialogData;

static int docDlg = -1;
static int sQuitUserInterfaceCalled;
static int sDocFileSavedSuccessfully;

static int DocDialog_Setup(DocDialogData *dialogData);
static int DocDialog_SetDocOptionsProperties(DocDialogData *dialogData);
static int DocDialog_RequestCancel(DocDialogData *dialogData);
static int DocDialog_SetUnsupportedCtrlsEnableState(int panel, int enableState);

#define DOC_OPTIONS_FILE_NAME                   "docgen.ini"
#define DOC_OPTIONS_INI_SECTION_NAME            "DocOptions"

#define SEQUENCE_FILE_FROM_CONTEXT_PROP         "RunState.InitialSelection.SelectedFile"
#define MY_SEQUENCE_FILE_FROM_CONTEXT_PROP      "RunState.SequenceFile"

#define DOC_FILE_FMT_HTML       0
#define DOC_FILE_FMT_TEXT       1
#define DOC_FILE_FMT_CSV		2
#define DOC_FILE_FMT_HTML_STR   "html"
#define DOC_FILE_FMT_TEXT_STR   "txt"
#define DOC_FILE_FMT_CSV_STR    "csv"

#define DOC_OPT_SHOW_LOCALS_PROP                "ShowLocals"
#define DOC_OPT_SHOW_PARAMS_PROP                "ShowParameters"
#define DOC_OPT_SHOW_FILEGLOBALS_PROP           "ShowFileGlobals"
#define DOC_OPT_SHOW_GLOBALS_PROP               "ShowStationGlobals"
#define DOC_OPT_SHOW_SUBPROPS_PROP              "ShowSubproperties"
#define DOC_OPT_SHOW_HIDDEN_PROP                "ShowHidden"
#define DOC_OPT_SHOW_ELEMS_PROP                 "ShowArrayElements"
#define DOC_OPT_MAX_ELEMS_PROP                  "MaxNumArrayElementsToShow"
#define DOC_OPT_FILE_FMT_PROP                   "FileFormat"
#define DOC_OPT_LAUNCH_VIEWER_PROP              "LaunchViewer"
#define DOC_OPT_DEST_FILE_PATH_PROP             "DestFileAbsPath"

#define kTS_DocGen_Id         					"DocGen"       

int _stdcall _export DisplayDocDlg(CAObjHandle context, CAObjHandle docOptions)
    {
    int         error = 0;
    ERRORINFO   errorInfo = {0};
    CAObjHandle engine = 0;
    CAObjHandle contextPropObj = 0;
    CAObjHandle sequenceFile = 0;
    CAObjHandle mySequenceFile = 0;
    TSModalData modalData = InitialModalData;
    DocDialogData dialogData = {0, 0, 0, 0, 0, 0, 0, -1};
    VBOOL       launchViewer = VFALSE;
    char *      filePath = 0;
    VBOOL       shouldAbort = VFALSE;
    
    // initialize globals
    sQuitUserInterfaceCalled = FALSE;
    sDocFileSavedSuccessfully = FALSE;

    SetSystemAttribute (ATTR_DISABLE_LABEL_POSITION_ADJUSTMENT, TRUE);
    docDlg = LoadPanelEx (0, "docdlgs.uir", DOC_CONFIG, __CVIUserHInst);
    SetSystemAttribute (ATTR_DISABLE_LABEL_POSITION_ADJUSTMENT, FALSE);
    errChk(docDlg);

    tsErrChkMsgPopup( TS_SeqContextGetEngine (context, &errorInfo, &engine));
    tsErrChkMsgPopup( TS_SeqContextAsPropertyObject (context, &errorInfo, &contextPropObj));
    tsErrChkMsgPopup( TS_PropertyGetPropertyObject (contextPropObj, &errorInfo, SEQUENCE_FILE_FROM_CONTEXT_PROP,
                                        0, &sequenceFile));
    tsErrChkMsgPopup( TS_PropertyGetPropertyObject (contextPropObj, &errorInfo, MY_SEQUENCE_FILE_FROM_CONTEXT_PROP,
                                        0, &mySequenceFile));

    dialogData.engine           = engine;
    dialogData.context          = context;
    dialogData.contextPropObj   = contextPropObj;
    dialogData.sequenceFile     = sequenceFile;
    dialogData.mySequenceFile   = mySequenceFile;
    dialogData.docOptions       = docOptions;
    dialogData.panel            = docDlg;

   	// Use ChainPanelCallback to ensure that we can get the callback data
	errChk( ChainPanelCallback (docDlg, NULL, &dialogData, kTS_DocGen_Id));

    RecessFrame (docDlg, DOC_CONFIG_SEQFILE_NAME);
    RecessFrame (docDlg, DOC_CONFIG_DEST_FILE);
    RecessFrame (docDlg, DOC_CONFIG_MAX_ELEMS);
    
    errChk( DocDialog_Setup(&dialogData));

    tsErrChkMsgPopup( TS_StartModalDialogEx (engine, &errorInfo, context, &shouldAbort,
                                             &modalData));

    if(!shouldAbort)
    {								
        tsErrChkMsgPopup(TS_MovePanelToActiveMonitor(engine, docDlg));	
        errChk( InstallPopup(docDlg));
        tsErrChkMsgPopup( TS_CancelDialogIfExecutionStops(docDlg, context));
    
        RunUserInterface();

        tsErrChkMsgPopup( TS_PropertyGetValBoolean (docOptions, &errorInfo,
                                                    DOC_OPT_LAUNCH_VIEWER_PROP, 0,
                                                    &launchViewer));
        tsErrChkMsgPopup( TS_PropertyGetValString (docOptions, &errorInfo,
                                                   DOC_OPT_DEST_FILE_PATH_PROP, 0, &filePath));
    }

Error:

    TS_EndModalDialogAndDiscard(&errorInfo, &modalData, docDlg);
    
    if(sDocFileSavedSuccessfully && launchViewer)
        TS_EngineLaunchExternalViewer (engine, &errorInfo, filePath);

    CA_DiscardObjHandle(engine);
    CA_DiscardObjHandle(contextPropObj);
    CA_DiscardObjHandle(sequenceFile);
    CA_DiscardObjHandle(dialogData.docExecution);
    CA_DiscardObjHandle(mySequenceFile);
    CA_FreeMemory(filePath);

    return error;
    }

static int DocDialog_Dim(DocDialogData *dialogData)
{
    int         error = 0;

    if(dialogData->docExecution) // we are running an documentation execution
    {
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_OK_BTN, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_FILE_FMT, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_DEST_FILE, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_BROWSE_DEST_FILE, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_SHOW_PARAMS, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_SHOW_LOCALS, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_SHOW_FILEGLOBALS, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_SHOW_GLOBALS, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_SHOW_SUBPROPS, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_SHOW_HIDDEN, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_SHOW_ELEMS, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_MAX_ELEMS, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_LAUNCH_VIEWER, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_PROPDISP_OPTS_LBL, ATTR_DIMMED, 1));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_VALUE_DISP_OPT_LBL, ATTR_DIMMED, 1));
    }
    else
    {
        int showElements;
        errChk( GetCtrlVal(dialogData->panel, DOC_CONFIG_SHOW_ELEMS, &showElements));
        errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_MAX_ELEMS, ATTR_DIMMED, !showElements));
    }

Error:

    return error;
}

static int DocDialog_Setup(DocDialogData *dialogData)
{
    int         error = 0;
    ERRORINFO   errorInfo = {0};
    char        string[512];
    CAObjHandle engine = dialogData->engine;
    char *      seqFilePath = 0, *fileFmtStr = 0;
    VBOOL 		locked;
    int 		protection;

	// set tooltip for browse button
	tsErrChkMsgPopup( TS_GetResourceString (engine, "SEQ_FILE_DOC", "DOC_DLG_FILE_BROWSE", NULL, 512, string));
	errChk( SetToolTipAttribute (dialogData->panel, DOC_CONFIG_BROWSE_DEST_FILE, TOOLTIP_ATTR_TEXT, string));

    // load resource strings
    tsErrChkMsgPopup( TS_LoadPanelResourceStrings(0, engine, dialogData->panel, "SEQ_FILE_DOC"));
    tsErrChkMsgPopup( TS_GetResourceString(engine, "SEQ_FILE_DOC", "DOC_DLG_HTML_FMT", NULL, 512, string));
    errChk( InsertListItem (dialogData->panel, DOC_CONFIG_FILE_FMT, -1, string, DOC_FILE_FMT_HTML));
    tsErrChkMsgPopup( TS_GetResourceString(engine, "SEQ_FILE_DOC", "DOC_DLG_TEXT_FMT", NULL, 512, string));
    errChk( InsertListItem (dialogData->panel, DOC_CONFIG_FILE_FMT, -1, string, DOC_FILE_FMT_TEXT));
 	//NEW: Added CSV Entry to the Dropdown selector
	tsErrChkMsgPopup( TS_GetResourceString(engine, "CSV_SEQ_FILE_DOC", "CSV_DOC_DLG_FMT", NULL, 512, string));
    errChk( InsertListItem (dialogData->panel, DOC_CONFIG_FILE_FMT, -1, string, DOC_FILE_FMT_CSV));

    // set ctrl values
    tsErrChkMsgPopup( TS_SeqFileGetPath (dialogData->sequenceFile, &errorInfo, &seqFilePath));
    if(seqFilePath[0] == 0) {
        tsErrChkMsgPopup( TS_GetResourceString(engine, "SEQ_FILE_DOC", "DOC_DLG_UNSAVED_SEQ_FILE", NULL, 512, string));
        errChk( SetCtrlVal(dialogData->panel, DOC_CONFIG_SEQFILE_NAME, string));
    } else
        errChk( SetCtrlVal(dialogData->panel, DOC_CONFIG_SEQFILE_NAME, seqFilePath));

    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_SHOW_LOCALS_PROP, dialogData->panel, DOC_CONFIG_SHOW_LOCALS));
    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_SHOW_PARAMS_PROP, dialogData->panel, DOC_CONFIG_SHOW_PARAMS));
    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_SHOW_FILEGLOBALS_PROP, dialogData->panel, DOC_CONFIG_SHOW_FILEGLOBALS));
    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_SHOW_GLOBALS_PROP, dialogData->panel, DOC_CONFIG_SHOW_GLOBALS));
    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_SHOW_SUBPROPS_PROP, dialogData->panel, DOC_CONFIG_SHOW_SUBPROPS));
    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_SHOW_HIDDEN_PROP, dialogData->panel, DOC_CONFIG_SHOW_HIDDEN));
    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_SHOW_ELEMS_PROP, dialogData->panel, DOC_CONFIG_SHOW_ELEMS));
    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_MAX_ELEMS_PROP, dialogData->panel, DOC_CONFIG_MAX_ELEMS));
    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_LAUNCH_VIEWER_PROP, dialogData->panel, DOC_CONFIG_LAUNCH_VIEWER));
    errChk( TS_SetCtrlToPropertyVal(dialogData->docOptions, DOC_OPT_DEST_FILE_PATH_PROP, dialogData->panel, DOC_CONFIG_DEST_FILE));

    // handle file format setting
    tsErrChkMsgPopup( TS_PropertyGetValString (dialogData->docOptions, &errorInfo,
                                               DOC_OPT_FILE_FMT_PROP, 0, &fileFmtStr));
    
	
	//NEW: If the value of the property is not "txt", set the dropdown to CSV instead of HTML
	if(MBStrICmp(DOC_FILE_FMT_TEXT_STR, fileFmtStr) == 0)
        errChk( SetCtrlVal(dialogData->panel, DOC_CONFIG_FILE_FMT, DOC_FILE_FMT_TEXT));
    else
	{
        errChk( SetCtrlVal(dialogData->panel, DOC_CONFIG_FILE_FMT, DOC_FILE_FMT_CSV));
		//if using CSV is default, disable the unsupported controls.
		DocDialog_SetUnsupportedCtrlsEnableState(dialogData->panel, 1);
	}
	

    // update ctrl dimming
    errChk( DocDialog_Dim(dialogData));

    // update locked file msg visibility
    tsErrChkMsgPopup( TS_PropertyObjectFileGetLocked (dialogData->sequenceFile, &errorInfo, &locked));
    tsErrChkMsgPopup( TS_PropertyObjectFileGetProtection (dialogData->sequenceFile, &errorInfo, &protection));
    SetCtrlAttribute (dialogData->panel, DOC_CONFIG_LOCKED_MSG, ATTR_TEXT_COLOR, VAL_RED);
    errChk( SetCtrlAttribute (dialogData->panel, DOC_CONFIG_LOCKED_MSG, ATTR_VISIBLE, locked && protection==2));

Error:
    CA_FreeMemory(seqFilePath);
    CA_FreeMemory(fileFmtStr);
    return error;
}

static int DocDialog_SetDocOptionsProperties(DocDialogData *dialogData)
{
    int         error = 0;
    ERRORINFO   errorInfo = {0};
    int         fileFmt;

    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_SHOW_LOCALS, dialogData->docOptions, DOC_OPT_SHOW_LOCALS_PROP));
    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_SHOW_PARAMS, dialogData->docOptions, DOC_OPT_SHOW_PARAMS_PROP));
    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_SHOW_FILEGLOBALS, dialogData->docOptions, DOC_OPT_SHOW_FILEGLOBALS_PROP));
    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_SHOW_GLOBALS, dialogData->docOptions, DOC_OPT_SHOW_GLOBALS_PROP));
    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_SHOW_SUBPROPS, dialogData->docOptions, DOC_OPT_SHOW_SUBPROPS_PROP));
    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_SHOW_HIDDEN, dialogData->docOptions, DOC_OPT_SHOW_HIDDEN_PROP));
    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_SHOW_ELEMS, dialogData->docOptions, DOC_OPT_SHOW_ELEMS_PROP));
    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_MAX_ELEMS, dialogData->docOptions, DOC_OPT_MAX_ELEMS_PROP));
    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_LAUNCH_VIEWER, dialogData->docOptions, DOC_OPT_LAUNCH_VIEWER_PROP));
    errChk( TS_SetPropertyToCtrlVal(dialogData->panel, DOC_CONFIG_DEST_FILE, dialogData->docOptions, DOC_OPT_DEST_FILE_PATH_PROP));

    // handle file format setting
    errChk( GetCtrlVal(dialogData->panel, DOC_CONFIG_FILE_FMT, &fileFmt));
    
	//NEW: - Added CSV as an Option for populating the "File Format" field of the docOptions Container in TestStand.
	//     - Replaced if/else with switch/case
	
	switch (fileFmt)
	{
		case DOC_FILE_FMT_TEXT:
			tsErrChkMsgPopup( TS_PropertySetValString (dialogData->docOptions, &errorInfo, DOC_OPT_FILE_FMT_PROP, 0, DOC_FILE_FMT_TEXT_STR));
			break;
		case DOC_FILE_FMT_HTML:
			tsErrChkMsgPopup( TS_PropertySetValString (dialogData->docOptions, &errorInfo, DOC_OPT_FILE_FMT_PROP, 0, DOC_FILE_FMT_HTML_STR));
			break;
		default:
			tsErrChkMsgPopup( TS_PropertySetValString (dialogData->docOptions, &errorInfo, DOC_OPT_FILE_FMT_PROP, 0, DOC_FILE_FMT_CSV_STR));
			break;
	}
	
Error:
    return error;
}

int CVICALLBACK DocDialog_OnBrowseDestFile (int panel, int control, int event,
        void *callbackData, int eventData1, int eventData2)
{
    int             error = 0;
    ERRORINFO       errorInfo = {0};
    char            title[512];
    char            currPath[MAX_PATHNAME_LEN];
    char            filePath[MAX_PATHNAME_LEN];
    char            fileFilter[100];
    char            *defaultExt = NULL;
    DocDialogData * dialogData = NULL;
    int             pressedOK;
    int             fileFmt;

    switch (event)
        {
        case EVENT_COMMIT:
			errChk( GetChainedPanelCallbackData (panel, kTS_DocGen_Id, (void **)&dialogData));
            errChk( GetCtrlVal (panel, DOC_CONFIG_DEST_FILE, currPath));
            errChk( GetCtrlVal (panel, DOC_CONFIG_FILE_FMT, &fileFmt));
            errChk( TS_GetResourceString(dialogData->engine, "SEQ_FILE_DOC", "DOC_FILE_SELECT_TITLE", NULL, 512, title));

            if(fileFmt == DOC_FILE_FMT_HTML)
            {
                defaultExt = "html";
                errChk( TS_GetResourceString(dialogData->engine, "SEQ_FILE_DOC", "DOC_DLG_FILE_DLG_HTML_FILTER", NULL, 100, fileFilter));
            }
            else
            {
                defaultExt = "txt";
                errChk( TS_GetResourceString(dialogData->engine, "SEQ_FILE_DOC", "DOC_DLG_FILE_DLG_TEXT_FILTER", NULL, 100, fileFilter));
            }

            errChk(TS_SaveFileDialog (dialogData->engine, title, currPath, fileFilter, defaultExt, filePath, &pressedOK, FALSE));

            if (pressedOK)
            {
                errChk( SetCtrlVal(panel, DOC_CONFIG_DEST_FILE, filePath));
            }
            break;
        }

Error:

    return 0;
}

int CVICALLBACK DocDialog_FileFmtChange (int panel, int control, int event,
        void *callbackData, int eventData1, int eventData2)
{
    int             error = 0;
    char            currPath[MAX_PATHNAME_LEN], *fileExt;
    int             fileFmt;
	
    switch (event)
        {
        case EVENT_COMMIT:
            // change the file extension of the file if any.
            errChk( GetCtrlVal (panel, DOC_CONFIG_DEST_FILE, currPath));
            errChk( GetCtrlVal (panel, DOC_CONFIG_FILE_FMT, &fileFmt));
            fileExt = MBFindFileExtension(currPath);
            if(*fileExt != 0)
            {
				//NEW:  - Added csv extension to the output filename
				//      - Migrated from if/else to switch/case
				//		- Disable Unsupported options controls for CSV.
                switch (fileFmt)
				{
					case DOC_FILE_FMT_HTML:
						strcpy(fileExt, "html");	
						DocDialog_SetUnsupportedCtrlsEnableState(panel, 0);
						break;
					case DOC_FILE_FMT_TEXT:
						strcpy(fileExt, "txt");
						DocDialog_SetUnsupportedCtrlsEnableState(panel, 0);
						break;
					default:
						strcpy(fileExt, "csv");
						DocDialog_SetUnsupportedCtrlsEnableState(panel, 1);
						break;
				}
				
				errChk( SetCtrlVal (panel, DOC_CONFIG_DEST_FILE, currPath));
							
            }
            break;
        }

Error:

    return 0;
}

static int DocDialog_RequestCancel(DocDialogData *dialogData)
{
    int             error = 0;
    ERRORINFO       errorInfo = {0};

    if(dialogData->docExecution)
        tsErrChkMsgPopup( TS_ExecutionTerminate (dialogData->docExecution, &errorInfo));

Error:

    if(!sQuitUserInterfaceCalled)
    {
        QuitUserInterface(0);
        sQuitUserInterfaceCalled = TRUE;
    }

    return error;
}

int CVICALLBACK DocDialog_OnShowElementsCheck (int panel, int control, int event,
        void *callbackData, int eventData1, int eventData2)
{
    int             error = 0;
    DocDialogData * dialogData = NULL;

    switch (event)
        {
        case EVENT_COMMIT:
			errChk( GetChainedPanelCallbackData (panel, kTS_DocGen_Id, (void **)&dialogData));
            errChk( DocDialog_Dim(dialogData));
            break;
        }
Error:

    return 0;
}

int CVICALLBACK DocDialog_OnHelp (int panel, int control, int event,
        void *callbackData, int eventData1, int eventData2)
{
    int             error = 0;
    DocDialogData * dialogData = NULL;
    long			hWnd;

    switch (event)
        {
        case EVENT_COMMIT:
        	errChk( GetChainedPanelCallbackData (panel, kTS_DocGen_Id, (void **)&dialogData));
			errChk(	TS_EngineDisplayHelpTopic (dialogData->engine, NULL, 4300, "", "", "", "", "", &hWnd));
            break;
        }
Error:

    return 0;
}

int CVICALLBACK DocDialog_OnCancel (int panel, int control, int event,
        void *callbackData, int eventData1, int eventData2)
{
    int             error = 0;
    DocDialogData * dialogData = NULL;

    switch (event)
        {
        case EVENT_COMMIT:
			errChk( GetChainedPanelCallbackData (panel, kTS_DocGen_Id, (void **)&dialogData));
            errChk( DocDialog_RequestCancel(dialogData));
            break;
        }
Error:

    return 0;
}

#define DOCGEN_SEQFILE_ROOTNAME     "docgen_"
#define DOCGEN_SEQ_NAME             "Sequence File Doc"
int CVICALLBACK DocDialog_OnOk (int panel, int control, int event,
        void *callbackData, int eventData1, int eventData2)
{
    int             error = 0;
    ERRORINFO       errorInfo = {0};
    DocDialogData * dialogData = NULL;
    CAObjHandle     docgenSeqFile = 0;
    CAObjHandle     docgenSeqArgs = 0;
    LPDISPATCH      seqArgDisp = NULL, mySeqFileDisp = NULL;
    char            docgenSeqFileName[MAX_FILENAME_LEN];
    char *          fileFmtStr = NULL, *docgenSeqFileAbsPath = NULL;
    VBOOL           userCancelled, foundIt;
    int             prevWaitCursorState = GetWaitCursorState();
    char            destPath[MAX_PATHNAME_LEN];

    switch (event)
        {
        case EVENT_COMMIT:
            SetWaitCursor(1);
			errChk( GetChainedPanelCallbackData (panel, kTS_DocGen_Id, (void **)&dialogData));
            errChk( GetCtrlVal (panel, DOC_CONFIG_DEST_FILE, destPath));
            // If dest path not specified, prompt user to browse for it.
            if(destPath[0] == 0)
            {
                DocDialog_OnBrowseDestFile (panel, DOC_CONFIG_BROWSE_DEST_FILE,
                                            EVENT_COMMIT, NULL, 0, 0);
                errChk( GetCtrlVal (panel, DOC_CONFIG_DEST_FILE, destPath));
                if(destPath[0] == 0)
                {
                    // still empty. they must have cancelled.
                    goto Error;
                }
            }
            // Warn if file already exists. Give chance to cancel.
            else if (MBFileExists (destPath))
            {
                char title[512];
                char label1[100];
                char label2[100];
                char overwriteMsg[100];
                char errMsg[MAX_PATHNAME_LEN + 100];
                int buttonHit;
                // prompt to overwrite
                errChk( TS_GetResourceString(dialogData->engine, "SEQ_FILE_DOC", "DOC_FILE_SELECT_TITLE", NULL, 512, title));
                errChk( TS_GetResourceString (dialogData->engine, "SEQ_FILE_DOC", "OVERWRITE_EXISTING_FILE",
                                              NULL, 100, overwriteMsg));
                StringCopyMax(errMsg, destPath, sizeof(errMsg)/sizeof(errMsg[0]));
                strcat(errMsg, overwriteMsg);
                errChk( TS_GetResourceString(dialogData->engine, "SEQ_FILE_DOC", "DOC_DLG_OK", "OK", 100, label1));
                errChk( TS_GetResourceString(dialogData->engine, "SEQ_FILE_DOC", "DOC_DLG_CANCEL", "Cancel", 100, label2));
                errChk( TS_ConfirmPopup(dialogData->context, title, errMsg, label1, label2, &buttonHit));
                if(buttonHit != 1)
                {
                    // cancelled
                    goto Error;
                }
            }
            
            // store control settings back into docOptions object
            errChk( DocDialog_SetDocOptionsProperties(dialogData));

            // Get appropriate sequence file
            tsErrChkMsgPopup( TS_PropertyGetValString (dialogData->docOptions, &errorInfo,
                                                       DOC_OPT_FILE_FMT_PROP, 0, &fileFmtStr));
            StringCopyMax(docgenSeqFileName, DOCGEN_SEQFILE_ROOTNAME, MAX_FILENAME_LEN);
            strcat(docgenSeqFileName, fileFmtStr);
            strcat(docgenSeqFileName, ".seq");
            tsErrChkMsgPopup( CA_GetDispatchFromObjHandle(dialogData->mySequenceFile, &mySeqFileDisp));
            tsErrChkMsgPopup( TS_EngineFindFile (dialogData->engine, &errorInfo, docgenSeqFileName,
                                                 &docgenSeqFileAbsPath, &userCancelled,
                                                 TS_FindFile_PromptDisable,
                                                 TS_FindFile_AddDirToSrchList_No, VFALSE,
                                                 CA_VariantDispatch(mySeqFileDisp), &foundIt));
            if(!foundIt)
                {
                char title[512];
                char msg[100 + MAX_FILENAME_LEN];
                errChk( TS_GetResourceString(dialogData->engine, "SEQ_FILE_DOC", "DOC_FILE_SELECT_TITLE", NULL, 512, title));
                errChk( TS_GetResourceString(dialogData->engine, "SEQ_FILE_DOC", "DOC_DLG_COULD_NOT_FIND_DOCGEN_SEQFILE", NULL, 100, msg));
                strcat(msg, docgenSeqFileName);
                TS_MessagePopup (dialogData->context, title, msg);
                errChk(-1); // File Not Found
                }
            tsErrChkMsgPopup( TS_EngineGetSeqFile (dialogData->engine, &errorInfo, docgenSeqFileAbsPath,
                                                   TS_GetSeqFile_OperatorInterfaceFlags,
                                                   &docgenSeqFile));
            
            // create sequence args property
            tsErrChkMsgPopup( TS_EngineNewPropertyObject (dialogData->engine, &errorInfo,
                                                          TS_PropValType_Container, VFALSE, "", 0,
                                                          &docgenSeqArgs));
            // pass ptr to sequence file to doc
            tsErrChkMsgPopup( TS_PropertySetPropertyObject (docgenSeqArgs, &errorInfo, "SeqFileToDoc",
                                                            TS_PropOption_InsertIfMissing|TS_PropOption_NotOwning,
                                                            dialogData->sequenceFile));
            // pass ptr to docOptions
            tsErrChkMsgPopup( TS_PropertySetPropertyObject (docgenSeqArgs, &errorInfo, "DocOptions",
                                                            TS_PropOption_InsertIfMissing|TS_PropOption_NotOwning,
                                                            dialogData->docOptions));
            tsErrChkMsgPopup( CA_GetDispatchFromObjHandle(docgenSeqArgs, &seqArgDisp));
            
            // New execution.
            tsErrChkMsgPopup( TS_EngineNewExecution (dialogData->engine, &errorInfo, docgenSeqFile,
                                                     DOCGEN_SEQ_NAME, 0, VFALSE,
                                                     TS_ExecTypeMask_InitiallyHidden | TS_ExecTypeMask_TracingInitiallyOff,
                                                     CA_VariantDispatch(seqArgDisp), CA_DEFAULT_VAL,
                                                     CA_DEFAULT_VAL, &(dialogData->docExecution)));

            // begin polling the execution's state
            errChk( SetCtrlAttribute (panel, DOC_CONFIG_TIMER, ATTR_ENABLED, 1));
            // dim everything except cancel and status
            errChk( SetCtrlAttribute (panel, DOC_CONFIG_PERCENT_DONE, ATTR_VISIBLE, 1));
            errChk( DocDialog_Dim(dialogData));
            break;
        }
Error:
    if(docgenSeqFile)
    {
        TS_EngineReleaseSeqFile (dialogData->engine, &errorInfo, docgenSeqFile);
        CA_DiscardObjHandle(docgenSeqFile);
    }
    CA_DiscardObjHandle(docgenSeqArgs);
    CA_FreeMemory(fileFmtStr);
    CA_FreeMemory(docgenSeqFileAbsPath);
    SetWaitCursor(prevWaitCursorState);

    return 0;
}

int CVICALLBACK DocDialog_PollDocExecutionState (int panel, int control, int event,
        void *callbackData, int eventData1, int eventData2)
{
    int             error = 0;
    ERRORINFO       errorInfo = {0};
    DocDialogData * dialogData = NULL;
    enum TSEnum_ExecutionRunStates runState;
    enum TSEnum_ExecutionTerminationStates termState;

    switch (event)
        {
        case EVENT_TIMER_TICK:
			errChk( GetChainedPanelCallbackData (panel, kTS_DocGen_Id, (void **)&dialogData));
            if(dialogData->docExecution)
            {
                // get the current state
                tsErrChkMsgPopup( TS_ExecutionGetStates (dialogData->docExecution, &errorInfo, &runState, &termState));
                
                if(runState == TS_ExecRunState_Stopped)
                {
                    if(!sQuitUserInterfaceCalled)
                    {
                        QuitUserInterface(1); // it's done
                        sQuitUserInterfaceCalled = TRUE;
                    }
                }
            }
            break;
        }
Error:

    return 0;
}

int CVICALLBACK DocDialog_ConfigPanelCallback (int panel, int event, void *callbackData,
        int eventData1, int eventData2)
{
    int             error = 0;
    DocDialogData * dialogData = NULL;

    switch (event)
        {
        case EVENT_GOT_FOCUS:

            break;
        case EVENT_LOST_FOCUS:

            break;
        case EVENT_CLOSE:
			errChk( GetChainedPanelCallbackData (panel, kTS_DocGen_Id, (void **)&dialogData));
            errChk( DocDialog_RequestCancel(dialogData));
            break;
        }
Error:

    return 0;
}

int _stdcall _export UpdateDocProgressText(char *newText)
{
    int         error = 0;

    errChk( SetCtrlVal (docDlg, DOC_CONFIG_STATUS_MSG, newText));

Error:
        
    return error;
}

int _stdcall _export UpdateDocProgressPercent(double percentDone)
{
    int         error = 0;

    errChk( SetCtrlVal (docDlg, DOC_CONFIG_PERCENT_DONE, percentDone));

Error:
        
    return error;
}

int _stdcall _export UpdateDocProgressTextAndPercent(char *newText, double percentDone)
{
    int         error = 0;

    errChk( SetCtrlVal (docDlg, DOC_CONFIG_STATUS_MSG, newText));
    errChk( SetCtrlVal (docDlg, DOC_CONFIG_PERCENT_DONE, percentDone));

Error:
        
    return error;
}

////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
// Document Generation support code
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
    
static int GetDocOptionsFilePath(CAObjHandle engine, char docOptionsFilePath[MAX_PATHNAME_LEN])
    {
    int         error = 0;
    ERRORINFO   errorInfo;
    char *      configDir = 0;
    
    tsErrChkMsgPopup(TS_EngineGetConfigDirectory (engine, &errorInfo, &configDir));
    MBMakePathname (configDir, DOC_OPTIONS_FILE_NAME, docOptionsFilePath);  
    
Error:
    CA_FreeMemory (configDir);
    
    return error;
    }

////////////////////////////////////////////////////////////
// returns negative error code if error occurred
int DLLEXPORT _stdcall WriteDocOptionDefaults(CAObjHandle engine, CAObjHandle docOptions)
    {
    ERRORINFO   errorInfo;
    HRESULT     error = 0;
    char        docOptionsFilePath[MAX_PATHNAME_LEN];
    
    errChk( GetDocOptionsFilePath(engine, docOptionsFilePath));
    tsErrChkMsgPopup( TS_PropertyWrite (docOptions, &errorInfo, docOptionsFilePath, DOC_OPTIONS_INI_SECTION_NAME, TS_RWOption_EraseExistingObject | TS_RWOption_ValuesOnly));

Error:
    return error;
    }

////////////////////////////////////////////////////////////
// returns negative error code if error occurred
int DLLEXPORT _stdcall ReadDocOptionDefaults(CAObjHandle engine, CAObjHandle docOptions)
    {
    ERRORINFO   errorInfo;
    HRESULT     error = 0;
    char        docOptionsFilePath[MAX_PATHNAME_LEN];
    int         found;
    
    errChk( GetDocOptionsFilePath(engine, docOptionsFilePath));
    found = MBFileExists (docOptionsFilePath);
    
    if (!found)
        errChk( WriteDocOptionDefaults(engine, docOptions));
    
    error = TS_PropertyRead (docOptions, &errorInfo, docOptionsFilePath, DOC_OPTIONS_INI_SECTION_NAME, TS_RWOption_ValuesOnly);
    if (error < 0)
        {       // type merging is not exposed in the API yet, replace options file
        long lastError = 0;
        
        if(error == DISP_E_EXCEPTION)
            lastError = errorInfo.sCode;
        
        if (lastError == TS_Err_TypeConflict)
            {
            errChk( WriteDocOptionDefaults(engine, docOptions));
            tsErrChkMsgPopup( TS_PropertyRead (docOptions, &errorInfo, docOptionsFilePath, DOC_OPTIONS_INI_SECTION_NAME, TS_RWOption_ValuesOnly));
            }
        else
            tsErrChkMsgPopup( error);
        }
    
Error:
    return error;
    }

////////////////////////////////////////////////////////////

int _stdcall _export GetStepTypeName(CAObjHandle step, CAObjHandle stringObjToStoreResult,
                                     int *isNIStepType)
    {
    int         error = 0;
    ERRORINFO   errorInfo;
    char *typeName = NULL;
    long unusedLong;
    VBOOL unusedBool;
    CAObjHandle typeDef = 0;
    
    tsErrChkMsgPopup(TS_PropertyGetType (step, &errorInfo, "",
                                  0, &unusedBool, &unusedBool, &typeName,
                                  (enum TSEnum_PropertyValueTypes *)&unusedLong));
    tsErrChkMsgPopup(TS_PropertySetValString (stringObjToStoreResult, &errorInfo,
                                       "", 0, typeName));
    if(isNIStepType) {
        long typeFlags;
        
        tsErrChkMsgPopup(TS_PropertyGetTypeDefinition (step, &errorInfo, "", 0, &typeDef));
        tsErrChkMsgPopup(TS_PropertyGetTypeFlags (typeDef, &errorInfo, "", 0, &typeFlags));
        if(typeFlags & TS_PropTypeFlags_NIInstalledType)
            *isNIStepType = TRUE;
        else
            *isNIStepType = FALSE;
    }

Error:

    if(typeName)
        CA_FreeMemory(typeName);
    if(typeDef)
        CA_DiscardObjHandle(typeDef);
        
    return error;
    }

int _stdcall _export GetStepDescription(CAObjHandle step, CAObjHandle stringObjToStoreResult)
    {
    int         error = 0;
    ERRORINFO   errorInfo;
    char *desc = NULL;
    long unusedLong;
    VBOOL unusedBool;
    
    tsErrChkMsgPopup(TS_StepGetDescription (step, &errorInfo, &desc));
    tsErrChkMsgPopup(TS_PropertySetValString (stringObjToStoreResult, &errorInfo,
                                       "", 0, desc));

Error:

    if(desc)
        CA_FreeMemory(desc);
        
    return error;
    }
    
int _stdcall _export SaveDocToFileEx(CAObjHandle context, CAObjHandle engine, char *docResult, char *filePath)
    {
    int         error = 0;
    ERRORINFO   errorInfo;
    FILE *fileH = NULL;
    size_t      bytesToWrite = strlen(docResult);

    // create file (overwrite existing if needed)
    if((fileH = fopen (filePath, "w+")) == NULL)
        errChk(UIEUnableToOpenFile);
    if(bytesToWrite != fwrite(docResult, 1, bytesToWrite, fileH))
        errChk(UIEErrorWritingFile);
    fclose (fileH);
    fileH = NULL;
    
    sDocFileSavedSuccessfully = TRUE;

Error:

    if(fileH)
        fclose (fileH);

    return error;
    }

// This function finds a character boundry to split a word on so that it is <= maxWordLen.
// This is necessary to avoid splitting a dualbyte character in half.
static ssize_t FindWordTruncLocation(char *wordStr, ssize_t maxWordLen)
{
    ssize_t len = 0;
    char *lastValidLoc, *nextLoc;
    
    lastValidLoc = wordStr;
    nextLoc = MBInc(lastValidLoc);
    len += (nextLoc - lastValidLoc);
    while(len <= maxWordLen)
    {
        lastValidLoc = nextLoc;
        if(*lastValidLoc == 0)
            return len;
        
        nextLoc = MBInc(lastValidLoc);
        len += (nextLoc - lastValidLoc);
    }
    
    return len - (nextLoc - lastValidLoc); // the number of bytes <= maxWordlen that ends on a character boundry
}

static int FindNextWord (char **str,  ssize_t *wordLen,          
                         int *foundNewline, int honorWhiteSpace);
 

static ssize_t FormatMsgIntoLines (
char msg[],
char buf[],      /* output buffer */
ssize_t bufSize,     /* including the nul byte */
int maxLineLen,  /* excluding the newline if any */
int numIndentChars,
int truncateLongWords,
int fullLines,   /* if TRUE, pad to full lines and don't add newlines */
                 /* if FALSE, do not pad, insert newlines, but not at end */
int *largerBufferNeeded)
{
    char *s, *d, *lastValidPos, *nextS;
    ssize_t wordLen, maxWordLen, lineLen, totalLen, numLines;
    ssize_t lastValidNumLines;
    int foundNewline = FALSE;
	int fitsOnSameLine = FALSE;

    if (maxLineLen <= numIndentChars) {
        return -1;
    }
    if(largerBufferNeeded)
        *largerBufferNeeded = FALSE;
    lastValidPos = buf;
    lastValidNumLines = 1;
    maxWordLen = maxLineLen - numIndentChars;
    memset (buf, ' ', bufSize);
    s = msg;
    d = buf+numIndentChars;
    lineLen = numIndentChars;
    totalLen = numIndentChars;
    numLines = 1;
    for (;;) {   /* at this point, totalLen < bufSize */
        if (!FindNextWord (&s, &wordLen, &foundNewline, TRUE))
            break;
        /**********************************************************/
        /* Ensure that word cannot exceed max line len.           */
        /* NOTE:  wordLen is always greater than zero.            */
        /* NOTE:  wordLen covers the leading white space.         */
        /**********************************************************/
        nextS = s + wordLen;
        if (wordLen > maxWordLen)
            wordLen = FindWordTruncLocation(s, maxWordLen);
        if(!truncateLongWords)
            nextS = s + wordLen;
            
        /**********************************************************/
        /* Calculate new lineLen and totalLen, and add separator, */
        /* BEFORE copying the word.                               */
        /**********************************************************/
        if (!foundNewline) {
            if ((lineLen == numIndentChars)   /* at beginning of first line or after a newline */
                   || (lineLen+wordLen <= maxLineLen)) {   /* can fit on same line */
                lineLen += wordLen;
                totalLen += wordLen;
                fitsOnSameLine = TRUE;
            }
            else {      /* cannot fit on same line, must start new line */
                while (isspace(*(unsigned char *)s) && (wordLen > 0)) {      /* added "&& (wordLen > 0)" 11/19/94 - JEB */
                    s++;           /* get rid of leading white space */
                    wordLen--;     /* wordLen included the leading white space */
                }
                fitsOnSameLine = FALSE;
            }
        }
        if (foundNewline || !fitsOnSameLine) {
            if (fullLines) {    /* pad, no newline */
                totalLen += maxLineLen - lineLen;   /* fill out current line to full len */
                if (totalLen+maxLineLen >= bufSize) /* can we fit another full line in buf? */
                {
                    if(largerBufferNeeded)
                        *largerBufferNeeded = TRUE;
                    break; /* no, get out */
                }
                d += maxLineLen - lineLen;          /* position at beginning of next line */
            }
            else {              /* no padding, add newline */
                /**********************************************************/
                /* NOTE:  since totalLen < bufSize, there is enough space */
                /*        to add the newline.  If that was the last byte  */
                /*        in buf, then the newline will be overwritten    */
                /*        with the nul byte later.                        */
                /**********************************************************/
                totalLen++;         /* allow for newline */
                *d++ = '\n';        /* add newline */
            }
            lineLen = numIndentChars + wordLen;    /* starting a new line */
            totalLen += numIndentChars + wordLen;
            d += numIndentChars;
            numLines++;
        }
        if (totalLen >= bufSize)   /* check totalLen before moving word */
        {
            if(largerBufferNeeded)
                *largerBufferNeeded = TRUE;
            break; /* no, get out */
        }
        memmove (d, s, wordLen);
        s = nextS;       /* since wordLen might have been reduced above */
        d += wordLen;
        lastValidPos = d;
        lastValidNumLines = numLines;
    }
    if (fullLines)
        lastValidPos = buf + (lastValidNumLines * maxLineLen);
    *lastValidPos = 0;
    return lastValidNumLines;
}

static int FindNextWord  (
char **str,
ssize_t *wordLen,          /* is set to 0 if *foundNewLine set to TRUE;  else is set to 1 or more */
int *foundNewline,
int honorWhiteSpace)   /* if TRUE, then the word returned may be preceded by white space; */
                       /* does not apply to white space at end of line or end of text     */
{
    char *start, *startNWS, *stop, *p;

    *foundNewline = FALSE;
    start = *str;

    /* find end of white space */
    for (p=start; isspace(*(unsigned char *)p); p++)
        if (*p == '\n') {    /* exception:  honor newlines */
            *str = p + 1;             /* kill white space before newline */
            *wordLen = 0;
            *foundNewline = TRUE;
            return TRUE;
        }

    /* check for empty string or pure white space before nul-byte */
    if (*p == 0)
        return FALSE;

    startNWS = p;

    /* at this point, there is a word possibly preceded by white space; */
    if (!honorWhiteSpace)
        start = startNWS;      /* throw away the preceding white space */

    /* set 'stop' to point to first white space or nul-byte after non-white space */
    for (stop = MBInc(startNWS); !isspace(*(unsigned char *)stop); stop = MBInc(stop))
        if (*stop == 0)
            break;
    *str = start;
    *wordLen = stop - start;
    return TRUE;
}

static void ReplaceTabsWithSpaces(char *srcbuf, char *destbuf, int numSpaces)
{
    int i;
    
    while(*srcbuf != '\0') {
        if(*srcbuf == '\t') {
            for(i = 0; i < numSpaces; i++)
                destbuf[i] = ' ';
            destbuf += numSpaces;
        } else {
            if(IsDBCSLeadByte(*(unsigned char *)srcbuf))
            {
                // copy 2 bytes
                *destbuf = *srcbuf;
                destbuf++;
                *destbuf = *(srcbuf + 1);
                destbuf++;
            }
            else
            {
                // copy 1 byte
                *destbuf = *srcbuf;
                destbuf++;
            }
        }
        if(IsDBCSLeadByte(*(unsigned char *)srcbuf))
            srcbuf += 2;
        else
            srcbuf++;
    }
    *destbuf = '\0';
}

#define TAB_EXPAND_TO   4 /* spaces */
int _stdcall _export WordWrapString(int maxLineLen, int numIndentChars,
                                    char *srcString,
                                    CAObjHandle stringObjToStoreResult,
                                    int *numLines)
{
    int         error = 0;
    ERRORINFO   errorInfo;
    char *resultBuf = NULL;
    char *noTabsBuf = NULL;
    int needLargerBuffer;
    ssize_t currentBufSize;
    
    if (srcString[0] != 0) {
        currentBufSize = (strlen(srcString) * TAB_EXPAND_TO /* space for expanding tabs */) + 1;
    
        /* allocate a big enough buffer for the result */
        noTabsBuf = (char *) malloc(currentBufSize);
        if(!noTabsBuf)
            errChk(TS_Err_OutOfMemory);
        
        ReplaceTabsWithSpaces(srcString, noTabsBuf, TAB_EXPAND_TO);

        /* word wrap it (grow buffer if needed) */
        do {
            if(resultBuf) {
                free(resultBuf);
                resultBuf = NULL;
            }
            currentBufSize *= 2; /* double it with each iteration */
            resultBuf = (char *) malloc(currentBufSize);
            if(!resultBuf)
                errChk(TS_Err_OutOfMemory);
            
            errChk(*numLines = (int)FormatMsgIntoLines(noTabsBuf, resultBuf, currentBufSize,
                                       maxLineLen, numIndentChars, FALSE, FALSE,
                                       &needLargerBuffer));
        } while (needLargerBuffer);
    
        /* store results in string object */    
        tsErrChkMsgPopup(TS_PropertySetValString (stringObjToStoreResult, &errorInfo,
                                           "", 0, resultBuf));
    }                                           
    else {
            /* store results in string object */    
        tsErrChkMsgPopup(TS_PropertySetValString (stringObjToStoreResult, &errorInfo,
                                           "", 0, ""));
    }                                      

Error:

    if(resultBuf)
        free(resultBuf);
    if(noTabsBuf)
        free(noTabsBuf);
        
    return error;
}

////////////////////////////////////////////////////////////

void _stdcall _export GetCharsetHTMLMetaString(char resultStrBuf[1024])
{
    char *charSetStr;
    
    switch(_getmbcp())
    {
        case 20105:
            charSetStr = "us-ascii";
            break;

        case 28592:
            charSetStr = "iso-8859-2";
            break;
            
        case 1250:
            charSetStr = "Windows-1250";
            break;
            
        case 1251:
            charSetStr = "Windows-1251";
            break;
            
        case 1253:
            charSetStr = "Windows-1253";
            break;
            
        case 1254:
            charSetStr = "Windows-1254";
            break;
            
        case 932:
            charSetStr = "shift_jis";
            break;
            
        case 51932:
            charSetStr = "x-euc-jp";
            break;
            
        case 50220:
            charSetStr = "iso-2022-jp";
            break;
            
        case 1257:
            charSetStr = "Windows-1257";
            break;
            
        case 950:
            charSetStr = "big5";
            break;
            
        case 936:
            charSetStr = "gb2312";
            break;
            
        case 20866:
            charSetStr = "koi8-r";
            break;
            
        case 949:
            charSetStr = "ks_c_5601";
            break;
            
        case 1255:
            charSetStr = "iso-8859-8";
            break;
            
        case 862:
            charSetStr = "dos-862";
            break;
            
        case 1256:
            charSetStr = "Windows-1256";
            break;
            
        case 720:
            charSetStr = "dos-720";
            break;
            
        case 874:
            charSetStr = "Windows-874";
            break;
            
        case 1258:
            charSetStr = "Windows-1258";
            break;
            
        case 65001:
            charSetStr = "UTF-8";
            break;
            
        case 65000:
            charSetStr = "UNICODE-1-1-UTF-7";
            break;
            
        case 50225:
            charSetStr = "ISO-2022-KR";
            break;
            
        case 52936:
            charSetStr = "HZ-GB-2312";
            break;
            
        case 28594:
            charSetStr = "iso-8869-4";
            break;
            
        case 28585:
            charSetStr = "iso-8859-5 ";
            break;
            
        case 28597:
            charSetStr = "iso-8859-7";
            break;
            
        case 28599:
            charSetStr = "iso-8859-9";
            break;

        case 1252:
        default:
            charSetStr = "iso-8859-1";
            break;
    }
    
    sprintf(resultStrBuf,
            "<META HTTP-EQUIV=\"Content-Type\" Content=\"text/html; charset=%s\">",
            charSetStr);
}

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
// OBSOLETE functions provided for backwards compatibility

static int progDlg = -1;

int _stdcall _export ShowDocProgressDlg(CAObjHandle engine)
    {
    int         error = 0;
    ERRORINFO   errorInfo;
    char dlgTitle[256], dlgTxt[256], cancelBtnTxt[256];

    errChk( TS_GetResourceString(engine, "SEQ_FILE_DOC", "DOC_PROGDLG_TITLE", NULL, 256, dlgTitle));
    SetSystemAttribute (ATTR_TASKBAR_BUTTON_TEXT, dlgTitle);
    SetSystemAttribute (ATTR_TASKBAR_BUTTON_VISIBLE, TRUE);
    errChk( TS_GetResourceString(engine, "SEQ_FILE_DOC", "DOC_PROGDLG_PERCENT_DONE", NULL, 256, dlgTxt));
    errChk( TS_GetResourceString(engine, "SEQ_FILE_DOC", "DOC_PROGDLG_CANCEL", NULL, 256, cancelBtnTxt));
    SetForegroundWindow((HWND)GetCVIWindowHandle());
    errChk(progDlg = CreateProgressDialog (dlgTitle, dlgTxt, 1, VAL_NO_INNER_MARKERS,
                                           cancelBtnTxt));
Error:
        
    return error;
    }

int _stdcall _export UpdateDocProgressDlg(int percentDone, int *userCancelled)
    {
    int         error = 0;

    errChk(*userCancelled = UpdateProgressDialog (progDlg, percentDone, 1));

Error:
        
    return error;
    }

void _stdcall _export DiscardDocProgressDlg(void)
    {
    if(progDlg >= 0)
        DiscardProgressDialog(progDlg);
    SetSystemAttribute (ATTR_TASKBAR_BUTTON_VISIBLE, FALSE);
    }

int _stdcall _export SaveDocToFile(CAObjHandle context, CAObjHandle engine, char *docResult, char *fileExt)
    {
    int         error = 0;
    ERRORINFO   errorInfo;
    char string[256], filterString[MAX_FILENAME_LEN];
    char filePath[MAX_PATHNAME_LEN];
    char dlgBuf[256 + MAX_PATHNAME_LEN];
    char dlgTitle[256], yesBtn[50], noBtn[50];
    int createFile = FALSE;
    int pressedOK;
    int confirmRes;
    FILE *fileH = NULL;
        
    errChk( TS_GetResourceString(engine, "SEQ_FILE_DOC", "DOC_FILE_SELECT_TITLE", NULL, 256, dlgTitle));
    sprintf(filterString, "*.%s|*.%s||", fileExt, fileExt);
    errChk(MBSaveFileDialog (engine, dlgTitle, "", filterString, fileExt, filePath, &pressedOK, TRUE));
    if(pressedOK)
        createFile = TRUE;
        
    if(createFile) {
        // create file (overwrite existing if needed)
        if((fileH = fopen (filePath, "w+")) == NULL)
            errChk(UIEUnableToOpenFile);
        fwrite(docResult, 1, strlen(docResult), fileH);
        fclose (fileH);
        fileH = NULL;
        // ask user if they want to view the file (launch viewer if yes)
        errChk( TS_GetResourceString(engine, "SEQ_FILE_DOC", "DOC_CREATED_SUCCESSFULLY_VIEW_NOW", NULL, 256, string));
        sprintf(dlgBuf, string, filePath);
        errChk( TS_GetResourceString(engine, "SEQ_FILE_DOC", "YES_BTN", NULL, 50, yesBtn));
        errChk( TS_GetResourceString(engine, "SEQ_FILE_DOC", "NO_BTN", NULL, 50, noBtn));
        errChk(TS_ConfirmPopup (context, dlgTitle, dlgBuf, yesBtn, noBtn,
                                &confirmRes));
        if(confirmRes == 1)
            tsErrChkMsgPopup(TS_EngineLaunchExternalViewer (engine, &errorInfo, filePath));
    }

Error:

    if(fileH)
        fclose (fileH);

    return error;
    }


//////////////////////////////////////////////////////////////////////
//CUSTOMIZATION: Functions added as part of the customization process
//////////////////////////////////////////////////////////////////////

// This function is mainly used for disabling the unsupported controls
// when using the CSV Doc option. If this gets supported eventually, this
// function can be removed.

static int DocDialog_SetUnsupportedCtrlsEnableState(int panel, int enableState)
{
	int         error = 0;
	// List of controls to be disabled.
	int		disableCtrlList[] = {DOC_CONFIG_SHOW_PARAMS, 
							   DOC_CONFIG_SHOW_LOCALS,
							   DOC_CONFIG_SHOW_FILEGLOBALS,
							   DOC_CONFIG_SHOW_GLOBALS,DOC_CONFIG_SHOW_SUBPROPS,
							   DOC_CONFIG_SHOW_HIDDEN,DOC_CONFIG_SHOW_ELEMS,
							   DOC_CONFIG_MAX_ELEMS}; 
	
	for (int x = 0; x < sizeof(disableCtrlList); x++)
		errChk( SetCtrlAttribute(panel, disableCtrlList[x], ATTR_DIMMED, enableState) );
			   
Error:
	return error;

}