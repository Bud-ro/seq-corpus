#include "DIAdem.h"
#include <cvirte.h>		
#include <userint.h>
#include "DIAdemSteps.h"
#include "tsutil.h"
#include "common.h"

#define TS_DIADEM_OPEN_REF_EXPR	  	"Step.DIAdemRefExpr"
#define TS_DIADEM_OPEN_HOST_EXPR  	"Step.HostNameExpr"
#define TS_DIADEM_OPEN_SHOW_ENV   	"Step.ShowEnvironment"

#define TS_DIADEM_OPEN_REF_HEADER 	"OPEN_DIADEM_REF_STEP_TYPE"


#define TS_DIADEM_OPEN_WAIT_CONST	.200

static int panel;


void DLLEXPORT DIAdemOpenRefEdit(CAObjHandle context)
{
	ErrMsg errMsg;
	int error = 0;
	ERRORINFO errorInfo;
	
	CAObjHandle refExpr = 0, hostNameExpr = 0;  
	char *refExprText = NULL, *hostNameExprText = NULL;
	
	char string[RSTRING_SIZE];  
   	TSModalData tsModalData;
	VBOOL showEnv;
	int clickedOK; 
	
	errChk (panel = LoadPanelEx (0, "DIAdemSteps.uir", OPENREF, __CVIUserHInst));

	// Localize Controls

	tsErrChk (TS_GetResourceString (context, TS_DIADEM_OPEN_REF_HEADER,
									"EDIT_DIALOG_TITLE", NULL, RSTRING_SIZE, string));
	errChk (SetPanelAttribute (panel, ATTR_TITLE, string));
	
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_OPEN_REF_HEADER,
									"EDIT_DIALOG_OK_BTN", NULL, RSTRING_SIZE,
									string));
								 
	errChk (SetCtrlAttribute (panel, OPENREF_OKBTN, ATTR_LABEL_TEXT, string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_OPEN_REF_HEADER,
									"EDIT_DIALOG_CANCEL_BTN", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute(panel, OPENREF_CANCELBTN, ATTR_LABEL_TEXT, string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_OPEN_REF_HEADER,
									"EDIT_DIALOG_SHOW_ENV", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, OPENREF_SHOWENVIRONMENT, ATTR_LABEL_TEXT,
							 string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_OPEN_REF_HEADER,
									"EDIT_DIALOG_REMOTE_HOST", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, OPENREF_HOSTNAMEEXPR, ATTR_LABEL_TEXT,
							  string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_OPEN_REF_HEADER,
								 "EDIT_DIALOG_REF" , NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, OPENREF_DIADEMREFEXPR, ATTR_LABEL_TEXT,
							 string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_OPEN_REF_HEADER,
									"EDIT_DIALOG_HELP_BTN ", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, OPENREF_HELPBTN, ATTR_LABEL_TEXT, string));

	// Set Up Controls
	errChk (GetObjHandleFromActiveXCtrl (panel, OPENREF_DIADEMREFEXPR, &refExpr));
	errChk (GetObjHandleFromActiveXCtrl (panel, OPENREF_HOSTNAMEEXPR,
										 &hostNameExpr));
	tsErrChk (TSUI_ExpressionEditSetByRefContext (refExpr, &errorInfo, context));
	tsErrChk (TSUI_ExpressionEditSetByRefContext (hostNameExpr, &errorInfo, context));
	
	
	//Load Values
	tsErrChk (TS_PropertyGetValString (context, &errorInfo, TS_DIADEM_OPEN_REF_EXPR,
									   0, &refExprText));
	tsErrChk (TSUI_ExpressionEditSetText (refExpr, &errorInfo, refExprText));
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_OPEN_HOST_EXPR, 0,
									   &hostNameExprText));
	tsErrChk (TSUI_ExpressionEditSetText (hostNameExpr, &errorInfo,
										  hostNameExprText));
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo,
										TS_DIADEM_OPEN_SHOW_ENV, 0, &showEnv));
	errChk (SetCtrlVal (panel, OPENREF_SHOWENVIRONMENT, (showEnv==VTRUE)));
	
	//Display Interface
	tsErrChk (TS_StartModalDialog (context, &errorInfo, &tsModalData));
	
	errChk (InstallPopup (panel));
	clickedOK = RunUserInterface ();

	if (clickedOK)					
	{
		int showEnv;
		//Save Values
		CLEAR (refExprText,CA_FreeMemory);
		CLEAR (hostNameExprText, CA_FreeMemory);
		
		tsErrChk (TSUI_ExpressionEditGetText (refExpr, &errorInfo, &refExprText));
		tsErrChk (TSUI_ExpressionEditGetText (hostNameExpr, &errorInfo,
											  &hostNameExprText));
		errChk (GetCtrlVal (panel, OPENREF_SHOWENVIRONMENT, &showEnv));
		tsErrChk (TS_PropertySetValString (context, &errorInfo, TS_DIADEM_OPEN_REF_EXPR,
										   0, refExprText));
		tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_OPEN_HOST_EXPR, 0,
										   hostNameExprText));
		tsErrChk (TS_PropertySetValBoolean (context, &errorInfo,
											TS_DIADEM_OPEN_SHOW_ENV, 0,
											(showEnv==0)?VFALSE:VTRUE));
	}
	
 	
 Error:
 	RemovePopup(panel);
	TS_EndModalDialog (&errorInfo, &tsModalData);
	
	CLEAR (refExpr, CA_DiscardObjHandle);
	CLEAR (hostNameExpr, CA_DiscardObjHandle);
 	CLEAR (refExprText,CA_FreeMemory);
	CLEAR (hostNameExprText, CA_FreeMemory);
	if(error < 0)
		TS_DisplayError (error, errMsg, context);
	return;
}	


int CVICALLBACK OpenCancelCallback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
		{
		case EVENT_COMMIT:
			QuitUserInterface (0);
			break;
		}
	return 0;
}


int CVICALLBACK OpenOKCallback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	int error = 0;
	int gotoError = 0;  

	switch (event)
		{

		case EVENT_COMMIT:
		
			errChk(CheckExpr(panel, OPENREF_DIADEMREFEXPR, &gotoError))
			if(!gotoError)
			{
				errChk(CheckExpr(panel, OPENREF_HOSTNAMEEXPR, &gotoError));
				if(!gotoError)
					errChk(QuitUserInterface(1));
			}
			break;
		}
		
Error:
	return error;
}

void DLLEXPORT DIAdemOpenRef(CAObjHandle context)
{

	ErrMsg errMsg  = "";
	int error = 0;
	ERRORINFO errorInfo;

	char *refExpr = NULL, * typeName = NULL, * hostExpr = NULL, * hostName = NULL;
	CAObjHandle refPropObj = 0, hostPropObj = 0, commandRef = 0, dataSheetRef  = 0,
		        execution = 0, termData = 0;
	VBOOL showEnv, interfaceLocked, terminate;
	VARIANT contextAsVariant = CA_VariantEmpty(), cmdVariant = CA_VariantEmpty();

	
	//get DIAdem Reference from TS
	{
		VBOOL isObj, isArray;
		enum TSEnum_PropertyValueTypes type; 
	
		tsErrChk (TS_PropertyGetValString (context, &errorInfo, TS_DIADEM_OPEN_REF_EXPR,
										   0, &refExpr));
		tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, refExpr, 0, &refPropObj));
		tsErrChk (TS_PropertyGetType (refPropObj, &errorInfo, "", 0, &isObj, &isArray,
									  &typeName, &type));
		if (strcmp(typeName, TS_DIADEM_REF_TYPE)!=0)
		{
			errChk (error = TS_DIADEM_INV_TYPE_ERR);
		}
	}
	
	//get Host Expression from TS
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_OPEN_HOST_EXPR, 0, &hostExpr));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, hostExpr, 0, &hostPropObj));
	tsErrChk (TS_PropertyGetValString (hostPropObj, &errorInfo, "", 0, &hostName));
	
	//get Show Environment from TS
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo,
										TS_DIADEM_OPEN_SHOW_ENV, 0, &showEnv));
	
	//get DIAdem References
	errChk (DIAdem_NewITOCommand (hostName, 1, LOCALE_NEUTRAL, 0, &commandRef));
	errChk (DIAdem_NewITODataSheet (hostName, 1, LOCALE_NEUTRAL, 0, &dataSheetRef));
	
	//set TS Variables
	tsErrChk (TS_PropertySetValIDispatch (refPropObj, &errorInfo,
										  TS_DIADEM_REF_COMMAND_REF, 0, commandRef));
	tsErrChk (TS_PropertySetValIDispatch (refPropObj, &errorInfo,
										  TS_DIADEM_REF_DATASHEET_REF, 0,
										  dataSheetRef));
	
	//connect to DIAdem
	
	tsErrChk (TS_SeqContextGetExecution (context, &errorInfo, &execution));
	errChk (CA_VariantSetObjHandle (&contextAsVariant, context, CAVT_DISPATCH));
	tsErrChk (TS_ExecutionInitTerminationMonitor (execution, &errorInfo, &termData));
	do
	{
		Sleep (TS_DIADEM_OPEN_WAIT_CONST);   
		tsErrChk (DIAdem_ITOCommandGetbInterfaceLocked (commandRef, &errorInfo,
														&interfaceLocked));
		tsErrChk (TS_ExecutionGetTerminationMonitorStatus (execution, &errorInfo,
														   termData, contextAsVariant,
														   &terminate));

	}	
	while(interfaceLocked==VTRUE && terminate==VFALSE); 
	
	//show environment
	
	if(showEnv==VTRUE)
	{
		char command[] = "WndShow('SHELL', 'MINIMIZE')";
		char command2[] = "WndShow('SHELL', 'NORMAL')";
		long success = 0;
		errChk(CA_VariantSetCString (&cmdVariant, command));  
		DIAdemErrChk (DIAdem_ITOCommandCmdExecuteSync (commandRef, &errorInfo, cmdVariant,
													   &success));
		CA_VariantClear(&cmdVariant);
		errChk(CA_VariantSetCString (&cmdVariant, command2));
		DIAdemErrChk (DIAdem_ITOCommandCmdExecuteSync (commandRef, &errorInfo, cmdVariant,
													   &success));
	}
	
	

Error:
	CLEAR(refExpr, CA_FreeMemory);
	CLEAR(typeName, CA_FreeMemory); 
	CLEAR(hostExpr, CA_FreeMemory);
	CLEAR(hostName, CA_FreeMemory);
	CLEAR(refPropObj,	 CA_DiscardObjHandle); 
	CLEAR(hostPropObj, CA_DiscardObjHandle);
	CLEAR(commandRef, CA_DiscardObjHandle);  
	CLEAR(dataSheetRef, CA_DiscardObjHandle);
	CLEAR(execution, CA_DiscardObjHandle);
	CLEAR(termData, CA_DiscardObjHandle);
	CA_VariantClear (&contextAsVariant);
	CA_VariantClear (&cmdVariant);
 if (error < 0)
    {
        switch(error)
        {
        	case TS_DIADEM_INV_TYPE_ERR:
				TS_GetResourceString (context, TS_DIADEM_OPEN_REF_HEADER, "INV_TYPE_ERR_MSG", "", RSTRING_SIZE, (char* )&errMsg);
				error = TS_Err_TypeMismatchError; 
				break;
				
			case ERROR_DIADEM_COM_ERROR:
				TS_GetResourceString (context, TS_DIADEM_OPEN_REF_HEADER,
								 "DIADEM_ERR_MSG", NULL, RSTRING_SIZE, (char *) &errMsg);
				error = TS_Err_ProgramError;
			break;
        }
		TS_SetStepError (context, error, errMsg);
	}
}

