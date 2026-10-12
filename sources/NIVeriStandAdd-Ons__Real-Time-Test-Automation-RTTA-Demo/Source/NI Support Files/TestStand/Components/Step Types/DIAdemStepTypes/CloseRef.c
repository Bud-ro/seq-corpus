#include <cvirte.h>		
#include <userint.h>
#include "DIAdemSteps.h"
#include "tsutil.h"   
#include "Common.h"

#define TS_DIADEM_CLOSE_REF_EXPR	"Step.DIAdemRefExpr"

#define TS_DIADEM_CLOSE_REF_HEADER 	"CLOSE_DIADEM_REF_STEP_TYPE"  


static int panel;

void DLLEXPORT DIAdemCloseRefEdit(CAObjHandle context)    
{
	ErrMsg errMsg = "";
	int error = 0;
	ERRORINFO errorInfo;

	char *refExprText = NULL;
	CAObjHandle refExpr = 0;
	
	char string[RSTRING_SIZE]; 
	TSModalData tsModalData;
	int clickedOK;
	
	errChk(panel = LoadPanelEx (0, "DIAdemSteps.uir", CLOSEREF, __CVIUserHInst));  
	
	//Localize Controls
	
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_CLOSE_REF_HEADER,
								 "EDIT_DIALOG_TITLE", NULL, RSTRING_SIZE, string));
	errChk (SetPanelAttribute (panel, ATTR_TITLE, string)); 
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_CLOSE_REF_HEADER,
								 "EDIT_DIALOG_OK_BTN", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, CLOSEREF_OKBTN, ATTR_LABEL_TEXT, string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_CLOSE_REF_HEADER,
								 "EDIT_DIALOG_CANCEL_BTN", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute(panel, CLOSEREF_CANCELBTN, ATTR_LABEL_TEXT, string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_CLOSE_REF_HEADER,
								 "EDIT_DIALOG_REF" , NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, CLOSEREF_DIADEMREFEXPR, ATTR_LABEL_TEXT,
							 string));
	
	// Set Up Controls
	errChk (GetObjHandleFromActiveXCtrl (panel, OPENREF_DIADEMREFEXPR, &refExpr));
	tsErrChk (TSUI_ExpressionEditSetByRefContext (refExpr, &errorInfo, context));
	
	//Load Values
	tsErrChk (TS_PropertyGetValString (context, &errorInfo, TS_DIADEM_CLOSE_REF_EXPR, 0, &refExprText));
	tsErrChk (TSUI_ExpressionEditSetText (refExpr, &errorInfo, refExprText));  


	tsErrChk (TS_StartModalDialog (context, &errorInfo, &tsModalData));  
	errChk (InstallPopup (panel));
	
	clickedOK = RunUserInterface ();
	if (clickedOK)
	{
		CLEAR (refExprText, CA_FreeMemory);
		tsErrChk (TSUI_ExpressionEditGetText (refExpr, &errorInfo, &refExprText));  
		tsErrChk (TS_PropertySetValString (context, &errorInfo, TS_DIADEM_CLOSE_REF_EXPR, 0, refExprText));
	}
	

  	errChk (RemovePopup(panel));
	tsErrChk (TS_EndModalDialog (&errorInfo, &tsModalData));  


Error:
	CLEAR (refExprText, CA_FreeMemory);
	CLEAR (refExpr, CA_DiscardObjHandle);
	if (error < 0)
		TS_DisplayError (error, errMsg, context);  

	return;
}

int CVICALLBACK CloseOKCallback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	int error = 0, gotoError = 0;
	switch (event)
		{
		case EVENT_COMMIT:
		
			errChk(CheckExpr(panel, CLOSEREF_DIADEMREFEXPR, &gotoError))
			if(!gotoError)
			{
			QuitUserInterface (1);
			}
			break;
		}
	Error:
	return error;
}

int CVICALLBACK CloseCancelCallback (int panel, int control, int event,
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

void DLLEXPORT DIAdemCloseRef(CAObjHandle context) 
{
	ErrMsg errMsg = "";
	int error = 0;
	ERRORINFO errorInfo;
	
	char * refExpr = NULL, *typeName = NULL;
	CAObjHandle refPropObj = 0;
	enum TSEnum_PropertyValueTypes type;
	VBOOL isObj, isArray;  

	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_CLOSE_REF_EXPR, 0, &refExpr));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, refExpr, 0, &refPropObj));
	tsErrChk (TS_PropertyGetType (refPropObj, &errorInfo, "", 0, &isObj, &isArray,
								  &typeName, &type));
	if (strcmp (typeName, TS_DIADEM_REF_TYPE)!=0)
	{
		errChk (error = TS_DIADEM_INV_TYPE_ERR);
	}
	
	
	tsErrChk (TS_PropertySetValIDispatch (refPropObj, &errorInfo,
										  TS_DIADEM_REF_COMMAND_REF, 0, 0));
	tsErrChk (TS_PropertySetValIDispatch (refPropObj, &errorInfo,
										  TS_DIADEM_REF_DATASHEET_REF, 0, 0));
										  

Error:
	CLEAR (typeName, CA_FreeMemory);
	CLEAR (refExpr, CA_FreeMemory);
	CLEAR (refPropObj, CA_DiscardObjHandle);
 if (error < 0)
    {
        switch(error)
        {
        	case TS_DIADEM_INV_TYPE_ERR:
				TS_GetResourceString (context, TS_DIADEM_CLOSE_REF_HEADER,
									  "INV_TYPE_ERR_MSG", "", RSTRING_SIZE,
									  (char* )&errMsg);
				error = TS_Err_TypeMismatchError; 
				break;
        }
		TS_SetStepError (context, error, errMsg);
	}

	
}
