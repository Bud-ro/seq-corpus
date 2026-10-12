#include "tsui.h"
#include "DIAdem.h"
#include <userint.h>
#include "DIAdemSteps.h"
#include "tsutil.h"
#include "common.h"

#define TS_DIADEM_RUN_SCRIPT_HEADER		"RUN_DIADEM_SCRIPT_STEP_TYPE"
#define TS_DIADEM_SCRIPT_REF_EXPR		"Step.DIAdemRefExpr"
#define TS_DIADEM_SCRIPT_PATH_EXPR		"Step.PathExpr"
#define TS_DIADEM_SCRIPT_PATH			"Step.Path"
#define TS_DIADEM_SCRIPT_USE_PATH_EXPR	"Step.UsePathExpr"
#define TS_DIADEM_SCRIPT_SYNCH			"Step.Synchronous"

typedef struct pathCallbackData
{
	char ** pathExprText;
	char ** pathText;
} PATHCALLBACKDATA;

static int panel;

int CVICALLBACK ScriptPathCallback (CAObjHandle caServerObjHandle, void *caCallbackData, CAObjHandle  btn);
int UpdatePathControl (CAObjHandle pathExpr, int usePathExpr, ErrMsg errMsg);
int TransferPathData (CAObjHandle pathExpr, int usePathExpr, char ** pathExprText, char ** pathText, int transferToControl, ErrMsg errMsg);

void DLLEXPORT DIAdemRunScriptEdit(CAObjHandle context)    
{

	ErrMsg errMsg = "";
	int error = 0;
	ERRORINFO errorInfo;
	
	TSModalData tsModalData;
	char * refExprText = NULL, * pathExprText = NULL, * pathText = NULL;
	CAObjHandle refExpr = 0, pathExpr = 0;
	
	VBOOL usePathExpr, waitOnScript;
	int clickedOK;
	char string[RSTRING_SIZE];   	
	PATHCALLBACKDATA pathCallbackData = {0};
		
	errChk (panel = LoadPanelEx (0, "DIAdemSteps.uir", RUNSCRIPT, __CVIUserHInst));   
	
	//Localize Controls
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_RUN_SCRIPT_HEADER,
									"EDIT_DIALOG_TITLE", NULL, RSTRING_SIZE, string));
	errChk (SetPanelAttribute (panel, ATTR_TITLE, string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_RUN_SCRIPT_HEADER,
									"EDIT_DIALOG_OK_BTN", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, RUNSCRIPT_OKBTN, ATTR_LABEL_TEXT, string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_RUN_SCRIPT_HEADER,
									"EDIT_DIALOG_CANCEL_BTN", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, RUNSCRIPT_CANCELBTN, ATTR_LABEL_TEXT, string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_RUN_SCRIPT_HEADER,
									"EDIT_DIALOG_REF", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, RUNSCRIPT_DIADEMREFEXPR, ATTR_LABEL_TEXT,
							  string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_RUN_SCRIPT_HEADER,
									"EDIT_DIALOG_PATH", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, RUNSCRIPT_PATH, ATTR_LABEL_TEXT, string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_RUN_SCRIPT_HEADER,
									"EDIT_DIALOG_USE_PATH_EXPR", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, RUNSCRIPT_PATHBYEXPRCHK, ATTR_LABEL_TEXT,
							  string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_RUN_SCRIPT_HEADER,
									"EDIT_DIALOG_WAIT_FOR_SCRIPT", NULL,
									RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, RUNSCRIPT_RUNASYNC, ATTR_LABEL_TEXT, string));
	
	// Set Up Controls  	
	pathCallbackData.pathExprText = &pathExprText;
	pathCallbackData.pathText = &pathText;
	
	errChk (GetObjHandleFromActiveXCtrl (panel, RUNSCRIPT_DIADEMREFEXPR, &refExpr));
	tsErrChk (TSUI_ExpressionEditSetByRefContext (refExpr, &errorInfo, context));
	errChk (GetObjHandleFromActiveXCtrl (panel, RUNSCRIPT_PATH, &pathExpr));
	tsErrChk (TSUI_ExpressionEditSetByRefContext (pathExpr, &errorInfo, context));
 	errChk (TSUI__ExpressionEditEventsRegOnButtonClick (pathExpr,
														ScriptPathCallback,
														NULL, 1,
														NULL));


	
	//Load Values
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_SCRIPT_REF_EXPR, 0, &refExprText));
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_SCRIPT_PATH_EXPR, 0, &pathExprText));
	tsErrChk (TS_PropertyGetValString (context, &errorInfo, TS_DIADEM_SCRIPT_PATH,
									   0, &pathText));
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo,
										TS_DIADEM_SCRIPT_USE_PATH_EXPR, 0,
										&usePathExpr));
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo, TS_DIADEM_SCRIPT_SYNCH,
										0, &waitOnScript));
	
	//Update Path Control
	errChk(SetCtrlAttribute (panel, RUNSCRIPT_PATHBYEXPRCHK, ATTR_CALLBACK_DATA,
							 &pathCallbackData));
	errChk (UpdatePathControl (pathExpr, (usePathExpr==VTRUE), errMsg));
	
	//Set Values
	tsErrChk (TSUI_ExpressionEditSetText (refExpr, &errorInfo, refExprText));
	errChk (TransferPathData (pathExpr, (usePathExpr==VTRUE), &pathExprText, &pathText,
	                          1, errMsg)); 
	errChk (SetCtrlVal (panel, RUNSCRIPT_RUNASYNC, (waitOnScript==VTRUE)));
	errChk (SetCtrlVal (panel, RUNSCRIPT_PATHBYEXPRCHK, (usePathExpr==VTRUE)));
	
 	tsErrChk(TS_StartModalDialog (context, &errorInfo, &tsModalData));   
	errChk (InstallPopup (panel));
	
	clickedOK = RunUserInterface ();
	
	if(clickedOK)
	{
		int pathByExpr, runAsync;
		errChk (GetCtrlVal (panel, RUNSCRIPT_PATHBYEXPRCHK, &pathByExpr));
		errChk (TransferPathData (pathExpr, pathByExpr, &pathExprText, &pathText,
		                          0, errMsg));
		errChk (GetCtrlVal (panel, RUNSCRIPT_RUNASYNC, &runAsync));
		CLEAR (refExprText, CA_FreeMemory);
		errChk (TSUI_ExpressionEditGetText (refExpr, &errorInfo, &refExprText));
		tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_SCRIPT_REF_EXPR, 0, refExprText));
		tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_SCRIPT_PATH_EXPR, 0, pathExprText));
		tsErrChk (TS_PropertySetValString (context, &errorInfo, TS_DIADEM_SCRIPT_PATH,
										   0, pathText));
		tsErrChk (TS_PropertySetValBoolean (context, &errorInfo,
											TS_DIADEM_SCRIPT_USE_PATH_EXPR, 0,
											(pathByExpr)?VTRUE:VFALSE));
		tsErrChk (TS_PropertySetValBoolean (context, &errorInfo, TS_DIADEM_SCRIPT_SYNCH,
											0, (runAsync)?VTRUE:VFALSE));
		
	}
	

	
	
Error:
  	errChk (RemovePopup(panel));
	tsErrChk (TS_EndModalDialog (&errorInfo, &tsModalData));  	
	CLEAR (refExprText, CA_FreeMemory);
	CLEAR (pathExprText, CA_FreeMemory);
	CLEAR (pathText, CA_FreeMemory);
	CLEAR (refExpr, CA_DiscardObjHandle);
	CLEAR (pathExpr, CA_DiscardObjHandle);
	if(error < 0)
		TS_DisplayError (error, errMsg, context);  
	return;

}

int UpdatePathControl (CAObjHandle pathExpr, int usePathExpr, ErrMsg errMsg)
{
	int error = 0;
	ERRORINFO errorInfo;
	CAObjHandle buttons = 0, button = 0;

	if(usePathExpr)
	{
		tsErrChk (TSUI_ExpressionEditSetTextType (pathExpr, &errorInfo,
												 TSUIConst_TextType_Expression));
		tsErrChk (TSUI_ExpressionEditGetButtons (pathExpr, &errorInfo, &buttons));   												 
		tsErrChk (TSUI_ExpressionEditButtonsGetItem (buttons, &errorInfo, 1000,
													 TSUIConst_SpecifyButton_ByKind,
													 &button));
		tsErrChk (TSUI_ExpressionEditButtonSetVisible (button, &errorInfo, VFALSE));
		
		CLEAR (button, CA_DiscardObjHandle);
	  
		tsErrChk (TSUI_ExpressionEditButtonsGetItem (buttons, &errorInfo, 1,
													 TSUIConst_SpecifyButton_ByKind,
													 &button));
		tsErrChk (TSUI_ExpressionEditButtonSetVisible (button, &errorInfo, VTRUE));
		CLEAR (button, CA_DiscardObjHandle);
		tsErrChk (TSUI_ExpressionEditButtonsGetItem (buttons, &errorInfo, 2,
													 TSUIConst_SpecifyButton_ByKind,
													 &button));
		tsErrChk (TSUI_ExpressionEditButtonSetVisible (button, &errorInfo, VTRUE));

		
		
	}
	
	else
	{
		tsErrChk (TSUI_ExpressionEditSetTextType (pathExpr, &errorInfo,
												  TSUIConst_TextType_PlainText));
		tsErrChk (TSUI_ExpressionEditGetButtons (pathExpr, &errorInfo, &buttons));
				  
		tsErrChk (TSUI_ExpressionEditButtonsGetItem (buttons, &errorInfo, 1,
													 TSUIConst_SpecifyButton_ByKind,
													 &button));
		tsErrChk (TSUI_ExpressionEditButtonSetVisible (button, &errorInfo, VFALSE));
		CLEAR (button, CA_DiscardObjHandle);
		tsErrChk (TSUI_ExpressionEditButtonsGetItem (buttons, &errorInfo, 2,
													 TSUIConst_SpecifyButton_ByKind,
													 &button));
		tsErrChk (TSUI_ExpressionEditButtonSetVisible (button, &errorInfo, VFALSE));
		CLEAR (button, CA_DiscardObjHandle);
		tsErrChk (TSUI_ExpressionEditButtonsGetItem (buttons, &errorInfo, 1000,
													 TSUIConst_SpecifyButton_ByKind,
													 &button));
		tsErrChk (TSUI_ExpressionEditButtonSetVisible (button, &errorInfo, VTRUE));	
	}
Error:
   CLEAR (buttons, CA_DiscardObjHandle);
   CLEAR (button, CA_DiscardObjHandle);
   return error;
	
}

int TransferPathData (CAObjHandle pathExpr, int usePathExpr, char ** pathExprText, char ** pathText, int transferToControl, ErrMsg errMsg)
{
	int error = 0;
	ERRORINFO errorInfo;
	
	if(transferToControl)
	{
	  if(usePathExpr)
		{
			tsErrChk (TSUI_ExpressionEditSetText (pathExpr, &errorInfo, *pathExprText));
		}
		else
		{
			tsErrChk (TSUI_ExpressionEditSetText (pathExpr, &errorInfo, *pathText));
		}
		 
	}
	else
	{
		if(usePathExpr)
		{
			CLEAR (*pathExprText, CA_FreeMemory);
			tsErrChk (TSUI_ExpressionEditGetText (pathExpr, &errorInfo, pathExprText));
		}
		else
		{
			CLEAR (*pathText, CA_FreeMemory);  
			tsErrChk (TSUI_ExpressionEditGetText (pathExpr, &errorInfo, pathText));
		}
		
	}
Error:
	return error;
}

int CVICALLBACK RunScriptOKCallback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	int error = 0;
	int gotoError = 0;
	int useExpr = 0;
	switch (event)
		{
		case EVENT_COMMIT:
			errChk(CheckExpr(panel, RUNSCRIPT_DIADEMREFEXPR, &gotoError)) 
			if(!gotoError)
			{
				errChk(GetCtrlVal (panel, RUNSCRIPT_PATHBYEXPRCHK, &useExpr));
				if(useExpr)
				{
					errChk(CheckExpr(panel, RUNSCRIPT_PATH, &gotoError));
					if(!gotoError)
						errChk(QuitUserInterface(1));
				}
				else
					errChk(QuitUserInterface(1));
			}
			
			break;
		}
Error:
	return error;
}

int CVICALLBACK RunScriptCancelCallback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
		{
		case EVENT_COMMIT:
			QuitUserInterface(0);
			break;
		}
	return 0;
}

int CVICALLBACK ScriptPathCallback (CAObjHandle caServerObjHandle, void *caCallbackData, CAObjHandle  btn)
	
{
	int error = 0;
	ErrMsg errMsg;
	ERRORINFO errorInfo; 

	BSTR *absPathsAsArray = NULL;
	char * newPath = NULL, * oldPath = NULL;
	SAFEARRAY *absolutePaths = NULL, *selectedPaths = NULL;
	CAObjHandle engine = 0;   	
	
	unsigned int numElems = 0;
	VBOOL pressedOK;
	char browseDialogTitle[RSTRING_SIZE], okButton[RSTRING_SIZE], fileTypes[RSTRING_SIZE]; 
	
		
	tsErrChk (TSUI_ExpressionEditGetEngine (caServerObjHandle, &errorInfo, &engine));
	tsErrChk (TS_GetResourceString (engine, TS_DIADEM_RUN_SCRIPT_HEADER,
								 "BROWSE_FILE_DIALOG_TITLE", NULL, RSTRING_SIZE, browseDialogTitle));
	
	tsErrChk (TS_GetResourceString (engine, TS_DIADEM_RUN_SCRIPT_HEADER,
								 "BROWSE_FILE_DIALOG_OK_BTN", NULL, RSTRING_SIZE, okButton));
	tsErrChk (TS_GetResourceString (engine, TS_DIADEM_RUN_SCRIPT_HEADER,
								 "BROWSE_FILE_DIALOG_FILE_TYPES", NULL, RSTRING_SIZE, fileTypes));
	
	tsErrChk (TSUI_ExpressionEditGetText (caServerObjHandle, &errorInfo, &oldPath));
	
	tsErrChk (TS_EngineDisplayFileDialog (engine, &errorInfo, browseDialogTitle,
										  okButton, oldPath, &selectedPaths,
										  &absolutePaths, 0x483, "vbs", 0x4,
										  fileTypes, CA_DEFAULT_VAL, NULL, NULL,
										  &pressedOK));
	
	if(pressedOK)
	{
		tsErrChk (CA_SafeArrayTo1DArrayEx (&absolutePaths, CAVT_BSTR, 0,
							 &absPathsAsArray, &numElems));
		if(numElems==1)
		{
			errChk (CA_BSTRGetCString (absPathsAsArray[0], &newPath));
			tsErrChk (TSUI_ExpressionEditSetText (caServerObjHandle, &errorInfo,
										newPath));
		}
	}
	

			
Error:
	while(numElems > 0)
	{
		numElems--;
		CLEAR (absPathsAsArray[numElems], CA_FreeBSTR);
	}
	CLEAR (selectedPaths, CA_SafeArrayDestroy);
	CLEAR (engine, CA_DiscardObjHandle);
	CLEAR (absPathsAsArray, CA_FreeMemory);
	CLEAR (newPath, CA_FreeMemory);
	CLEAR (oldPath, CA_FreeMemory);
	return 0;
}


int CVICALLBACK ScriptPathByExprCallback (int panel, int control, int event,
            							  void *callbackData, int eventData1,
            							  int eventData2)
{
	int pathByExpr, error =0;
	CAObjHandle  pathExpr = 0;
	ErrMsg errMsg = "";
	switch (event)
		{
		case EVENT_COMMIT:
			errChk (GetCtrlVal (panel, RUNSCRIPT_PATHBYEXPRCHK, &pathByExpr));
			errChk (GetObjHandleFromActiveXCtrl (panel, RUNSCRIPT_PATH, &pathExpr));
			errChk (TransferPathData (pathExpr, !pathByExpr, ((PATHCALLBACKDATA  *)callbackData)->pathExprText,
							  ((PATHCALLBACKDATA *)callbackData)->pathText, 0, errMsg));    
			UpdatePathControl (pathExpr, pathByExpr, errMsg);
			errChk (TransferPathData (pathExpr, pathByExpr, ((PATHCALLBACKDATA  *)callbackData)->pathExprText,
							  ((PATHCALLBACKDATA *)callbackData)->pathText, 1, errMsg)); 
			
			break;
		}
Error:
	CLEAR (pathExpr, CA_DiscardObjHandle);
	return error;
}

void DLLEXPORT DIAdemRunScript(CAObjHandle context)    
{
	ErrMsg errMsg = "";
	int error = 0;
	ERRORINFO errorInfo;
	
	char * command = NULL;    
	char * refExprText = NULL, * pathExpr = NULL, *path = NULL;
	CAObjHandle refObj = 0, commandRef = 0, pathObj = 0;

	char * extension; 
	VARIANT commandAsVariant = CA_VariantEmpty();
	VBOOL usePathExpr, sync;
	
	long success = 0;
	//Get Step Properties
	tsErrChk (TS_PropertyGetValString (context, &errorInfo, TS_DIADEM_SCRIPT_REF_EXPR, 0, &refExprText));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, refExprText, 0, &refObj));
	tsErrChk (TS_PropertyGetValIDispatch (refObj, &errorInfo, TS_DIADEM_REF_COMMAND_REF, 0, &commandRef));
	
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo, TS_DIADEM_SCRIPT_USE_PATH_EXPR, 0, &usePathExpr));	
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo, TS_DIADEM_SCRIPT_SYNCH, 0, &sync));
	if(usePathExpr==VTRUE)
	{
		tsErrChk (TS_PropertyGetValString (context, &errorInfo, TS_DIADEM_SCRIPT_PATH_EXPR, 0, &pathExpr));
		tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, pathExpr, 0, &pathObj));
		tsErrChk (TS_PropertyGetValString (pathObj, &errorInfo, "", 0, &path));
	}
	else
	{
		tsErrChk (TS_PropertyGetValString (context, &errorInfo, TS_DIADEM_SCRIPT_PATH, 0, &path));
	}
	
	//Check if VBS or AUT
	extension = strrchr (path, '.');
	if(stricmp(extension,".VBS")==0)
	{
		command = (char *) malloc(sizeof("ScriptStart(\"\")") + strlen(path) + 1);
		sprintf(command, "ScriptStart(\"%s\")",path);
		
	}
	else
	{
		command = (char *) malloc(sizeof("AutoStart(\"\")") + strlen(path) + 1);
		sprintf(command, "AutoStart(\"%s\")", path);
	}
	errChk(CA_VariantSetCString (&commandAsVariant, command));   
	if(sync==VTRUE)
	{
	 	DIAdemErrChk(DIAdem_ITOCommandCmdExecuteSync (commandRef, &errorInfo, commandAsVariant, &success));    
	}
	else
	{
		DIAdemErrChk(DIAdem_ITOCommandCmdExecuteAsync (commandRef, &errorInfo, commandAsVariant, &success)); 
	}
	
	
Error:
	CLEAR (refExprText, CA_FreeMemory);
	CLEAR (pathExpr, CA_FreeMemory);
	CLEAR (path, CA_FreeMemory);
	CLEAR (command, free);
	CLEAR (refObj, CA_DiscardObjHandle);
	CLEAR (commandRef, CA_DiscardObjHandle);
	CLEAR (pathObj, CA_DiscardObjHandle);
	CA_VariantClear(&commandAsVariant);
 	if (error < 0)
    {
		switch (error)
		{
		   	case ERROR_DIADEM_COM_ERROR:
				TS_GetResourceString (context, TS_DIADEM_RUN_SCRIPT_HEADER,
								 "DIADEM_ERR_MSG", NULL, RSTRING_SIZE, (char *) &errMsg);
				error = TS_Err_ProgramError;
			break;
		}
		TS_SetStepError (context, error, errMsg);
	}
}
