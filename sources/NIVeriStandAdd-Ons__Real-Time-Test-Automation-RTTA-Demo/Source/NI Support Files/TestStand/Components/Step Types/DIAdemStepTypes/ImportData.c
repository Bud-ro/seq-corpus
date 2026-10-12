#include "DIAdem.h"
#include "tsutil.h"
#include <cvirte.h>		
#include <userint.h>
#include "DIAdemSteps.h"
#include "common.h"

#define TS_DIADEM_IMPORT_REF_EXPR		"Step.DIAdemRefExpr"  
#define TS_DIADEM_IMPORT_DATA_EXPR		"Step.DataExpr"
#define TS_DIADEM_IMPORT_FIRST_CHN_EXPR	"Step.FirstChannelExpr"
#define TS_DIADEM_IMPORT_LAST_CHN_EXPR	"Step.LastChannelExpr"
#define TS_DIADEM_IMPORT_USE_NAME		"Step.UseName"

#define TS_DIADEM_IMPORT_HEADER			"IMPORT_DIADEM_CHN_STEP_TYPE"   

static int panel;


void DLLEXPORT DIAdemImportChnEdit(CAObjHandle context)
{
	TSModalData tsModalData = InitialModalData;

	int error = 0;
	ERRORINFO errorInfo;
	ErrMsg errMsg = "";

	int clickedOK = 0;
	char string[RSTRING_SIZE];
	VBOOL useName;
	
	CAObjHandle refExpr = 0, firstChnExpr = 0, lastChnExpr = 0, dataExpr = 0;
	char * refExprVal = NULL, * firstChnExprVal = NULL, * lastChnExprVal = NULL, * dataExprVal = NULL;
	
    errChk(panel = LoadPanelEx (0, "DIAdemSteps.uir", IMPORTCHN, __CVIUserHInst));   	

	//Localize Panel

    tsErrChk (TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "EDIT_DIALOG_TITLE", NULL, RSTRING_SIZE, string));
	errChk (SetPanelAttribute (panel, ATTR_TITLE, string));
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "EDIT_DIALOG_OK_BTN", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, IMPORTCHN_OKBTN, ATTR_LABEL_TEXT,
							 string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,									
								 "EDIT_DIALOG_CANCEL_BTN", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, IMPORTCHN_CANCELBTN, ATTR_LABEL_TEXT,
							 string));	
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "EDIT_DIALOG_REF", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, IMPORTCHN_DIADEMREFEXPR, ATTR_LABEL_TEXT,
							 string));	
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "EDIT_DIALOG_FIRST_CHN", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, IMPORTCHN_FIRSTCHANNEL, ATTR_LABEL_TEXT,
							 string));	
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "EDIT_DIALOG_LAST_CHN", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, IMPORTCHN_LASTCHANNEL, ATTR_LABEL_TEXT,
							 string));								 
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "EDIT_DIALOG_CHN_NAME", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, IMPORTCHN_NAMERADIO, ATTR_LABEL_TEXT,
							 string));	
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "EDIT_DIALOG_CHN_NO", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, IMPORTCHN_NUMBERRADIO, ATTR_LABEL_TEXT,
							 string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "EDIT_DIALOG_DATA", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, IMPORTCHN_DATA, ATTR_LABEL_TEXT,
							 string));	

	//Set up controls
 	errChk (GetObjHandleFromActiveXCtrl (panel, IMPORTCHN_DIADEMREFEXPR, &refExpr));
	errChk (GetObjHandleFromActiveXCtrl (panel, IMPORTCHN_FIRSTCHANNEL, &firstChnExpr));
	errChk (GetObjHandleFromActiveXCtrl (panel, IMPORTCHN_LASTCHANNEL, &lastChnExpr)); 
    errChk (GetObjHandleFromActiveXCtrl (panel, IMPORTCHN_DATA, &dataExpr));

 	tsErrChk (TSUI_ExpressionEditSetByRefContext (refExpr, &errorInfo, context));
    tsErrChk (TSUI_ExpressionEditSetByRefContext (firstChnExpr, &errorInfo, context)); 
    tsErrChk (TSUI_ExpressionEditSetByRefContext (lastChnExpr, &errorInfo, context)); 
    tsErrChk (TSUI_ExpressionEditSetByRefContext (dataExpr, &errorInfo, context)); 

	//Load Step Properties
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_IMPORT_REF_EXPR, 0, &refExprVal));
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_IMPORT_FIRST_CHN_EXPR, 0,
									   &firstChnExprVal));
 	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_IMPORT_LAST_CHN_EXPR, 0,
									   &lastChnExprVal));
 	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_IMPORT_DATA_EXPR, 0, &dataExprVal));
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo,
										TS_DIADEM_IMPORT_USE_NAME, 0, &useName));
	
	//Set Control Values
	tsErrChk (TSUI_ExpressionEditSetRequiredTypes (firstChnExpr, NULL,
												   (useName==VTRUE) ? 4 : 2));
	tsErrChk (TSUI_ExpressionEditSetRequiredTypes (lastChnExpr, NULL,
												   (useName==VTRUE) ? 4 : 2));
	errChk (SetCtrlVal (panel,
					   (useName==VTRUE) ? IMPORTCHN_NAMERADIO : IMPORTCHN_NUMBERRADIO,
					   TRUE));
	errChk (SetCtrlVal (panel,
						(useName!=VTRUE) ? IMPORTCHN_NAMERADIO : IMPORTCHN_NUMBERRADIO,
						FALSE));
	
	tsErrChk (TSUI_ExpressionEditSetText (refExpr, &errorInfo, refExprVal));
	tsErrChk (TSUI_ExpressionEditSetText (firstChnExpr, &errorInfo, firstChnExprVal));
	tsErrChk (TSUI_ExpressionEditSetText (lastChnExpr, &errorInfo, lastChnExprVal));
	tsErrChk (TSUI_ExpressionEditSetText (dataExpr, &errorInfo, dataExprVal));
	
	//Run UI
	tsErrChk(TS_StartModalDialog (context, &errorInfo, &tsModalData));
	errChk(InstallPopup (panel));	
	clickedOK = RunUserInterface ();
	//Save Values
	if(clickedOK)	
	{
		int useName;
	    CLEAR (refExprVal, CA_FreeMemory);
	    tsErrChk (TSUI_ExpressionEditGetText (refExpr, &errorInfo, &refExprVal));
	    CLEAR (firstChnExprVal, CA_FreeMemory);   
	    tsErrChk (TSUI_ExpressionEditGetText (firstChnExpr, &errorInfo, &firstChnExprVal));
	    CLEAR (lastChnExprVal, CA_FreeMemory);   
 	 	tsErrChk (TSUI_ExpressionEditGetText (lastChnExpr, &errorInfo, &lastChnExprVal));	   
	    CLEAR (dataExprVal, CA_FreeMemory); 
		tsErrChk (TSUI_ExpressionEditGetText (dataExpr, &errorInfo, &dataExprVal));
		errChk (GetCtrlVal (panel, IMPORTCHN_NAMERADIO, &useName));
		
		tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_IMPORT_REF_EXPR, 0, refExprVal));
		tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_IMPORT_FIRST_CHN_EXPR, 0,
										   firstChnExprVal));
	 	tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_IMPORT_LAST_CHN_EXPR, 0,
										   lastChnExprVal));
	 	tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_IMPORT_DATA_EXPR, 0, dataExprVal));
		tsErrChk (TS_PropertySetValBoolean (context, &errorInfo,
											TS_DIADEM_IMPORT_USE_NAME, 0, useName));
	}
	
Error:
    RemovePopup(panel);
   	TS_EndModalDialog (&errorInfo, &tsModalData);
   	CLEAR (refExpr, CA_DiscardObjHandle);
   	CLEAR (firstChnExpr, CA_DiscardObjHandle);  
   	CLEAR (lastChnExpr, CA_DiscardObjHandle);  
   	CLEAR (dataExpr, CA_DiscardObjHandle);
	CLEAR (refExprVal, CA_FreeMemory);    	
	CLEAR (firstChnExprVal, CA_FreeMemory);  
	CLEAR (lastChnExprVal, CA_FreeMemory);  
	CLEAR (dataExprVal, CA_FreeMemory);  
   	
   	if(error < 0)
		TS_DisplayError (error, errMsg, context);  
	return;

}


int CVICALLBACK ImportRadioCallback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	int error = 0;
	ERRORINFO errorInfo;
	ErrMsg errMsg;

	CAObjHandle firstChnExpr = 0, lastChnExpr = 0;
	switch (event)
		{
		case EVENT_COMMIT:
				errChk(SetCtrlVal (panel, IMPORTCHN_NAMERADIO, FALSE));
				errChk(SetCtrlVal (panel, IMPORTCHN_NUMBERRADIO, FALSE));
				errChk(SetCtrlVal (panel, control, TRUE));
				errChk(GetObjHandleFromActiveXCtrl (panel, IMPORTCHN_FIRSTCHANNEL,
													&firstChnExpr));
				errChk(GetObjHandleFromActiveXCtrl (panel, IMPORTCHN_LASTCHANNEL,
													&lastChnExpr));
				tsErrChk(TSUI_ExpressionEditSetRequiredTypes (firstChnExpr, &errorInfo,
															  (control==IMPORTCHN_NAMERADIO) ? 4 : 2));
				tsErrChk(TSUI_ExpressionEditSetRequiredTypes (lastChnExpr, &errorInfo,
															  (control==IMPORTCHN_NAMERADIO) ? 4 : 2));
				
			break;
		}
Error:
	CLEAR(lastChnExpr,CA_DiscardObjHandle);   	
	CLEAR(firstChnExpr,CA_DiscardObjHandle);
	return error;
}


int CVICALLBACK ImportChnOKCallback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	int error = 0; 
	int gotoError = 0; 
	switch (event)
		{
		case EVENT_COMMIT:
			errChk(CheckExpr(panel, IMPORTCHN_DIADEMREFEXPR, &gotoError));
			if(!gotoError)
			{
				errChk(CheckExpr(panel, IMPORTCHN_FIRSTCHANNEL, &gotoError));
				if(!gotoError)
				{
					errChk(CheckExpr(panel, IMPORTCHN_LASTCHANNEL, &gotoError));
					if(!gotoError)
					{
						errChk(CheckExpr(panel, IMPORTCHN_DATA, &gotoError)); 
						if(!gotoError)
							QuitUserInterface (1);
					}
				}
			}
		
			break;
		}
	Error:
	
	return error;
}

int CVICALLBACK ImportChnCancelCallback (int panel, int control, int event,
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


void DLLEXPORT DIAdemImportChn(CAObjHandle context) 
{

	ErrMsg errMsg  = "";
	int error = 0;
	ERRORINFO errorInfo;
	
	char * refExprVal = NULL, * firstChnExprVal = NULL, * lastChnExprVal = NULL, * dataExprVal = NULL,
		 * firstChnName = NULL, * lastChnName = NULL, * typeName = NULL, * format = NULL,
		 * upperBounds = NULL, *lowerBounds = NULL; 
																		   
	CAObjHandle refObj = 0, commandRef = 0, dataSheetRef = 0, firstChnObj = 0, lastChnObj = 0, dataExprObj = 0;
	char * command = NULL, * lBounds = NULL, * uBounds = NULL;
	BSTR stringData = NULL; 
	VARIANT cmdVariant = CA_VariantEmpty(), lengthAsVariant = CA_VariantEmpty(), startChnVariant = CA_VariantEmpty(),
		    endChnVariant = CA_VariantEmpty(), data = CA_VariantEmpty();

	enum TSEnum_PropertyValueTypes type; 
	int firstChnNo, lastChnNo;
	VBOOL useName;
										
	long success = 0, maxChnLen = 0;
	
	//Load Step Properties
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_IMPORT_REF_EXPR, 0, &refExprVal));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, refExprVal, 0, &refObj));
	tsErrChk (TS_PropertyGetValIDispatch (refObj, &errorInfo,
										  TS_DIADEM_REF_DATASHEET_REF, 0,
										  &dataSheetRef));
	tsErrChk (TS_PropertyGetValIDispatch (refObj, &errorInfo,
										  TS_DIADEM_REF_COMMAND_REF, 0, &commandRef));
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_IMPORT_FIRST_CHN_EXPR, 0,
									   &firstChnExprVal));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, firstChnExprVal, 0, &firstChnObj));
 	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_IMPORT_LAST_CHN_EXPR, 0,
									   &lastChnExprVal));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, lastChnExprVal, 0, &lastChnObj));
 	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_IMPORT_DATA_EXPR, 0, &dataExprVal));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, dataExprVal, 0, &dataExprObj));
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo,
										TS_DIADEM_IMPORT_USE_NAME, 0, &useName));
	
	//Find Channel
	if(useName)
	{
		tsErrChk (TS_PropertyGetValString (firstChnObj, &errorInfo, "", 0,
										   &firstChnName));
		command = (char *) malloc (sizeof("CNo(\"\")") + strlen(firstChnName) + 1);
		sprintf(command,"CNo(\"%s\")",firstChnName);
		DIAdemErrChk (DIAdem_ITOCommandIntegerVarGet (commandRef, &errorInfo, command,
													  &cmdVariant, &success));
		errChk (CA_VariantGetLong (&cmdVariant, &firstChnNo));  
		if (firstChnNo==0)
		{
			errChk (error = ERROR_CHANNEL_NOT_FOUND);
		}
		tsErrChk (TS_PropertyGetValString (lastChnObj, &errorInfo, "", 0,
										   &lastChnName));
		CLEAR (command, free);
		command = (char *) malloc (sizeof("CNo(\"\")") + strlen(lastChnName) + 1);  
		sprintf(command,"CNo(\"%s\")",lastChnName); 
		errChk (CA_VariantClear (&cmdVariant)); 
		DIAdemErrChk (DIAdem_ITOCommandIntegerVarGet (commandRef, &errorInfo, command,
													  &cmdVariant, &success));
		errChk (CA_VariantGetLong (&cmdVariant, &lastChnNo));  
		if (lastChnNo==0)
		{
			errChk (error = ERROR_CHANNEL_NOT_FOUND);
		}
	
	}
	else
	{
		double chnNo;
		tsErrChk (TS_PropertyGetValNumber (firstChnObj, &errorInfo, "", 0, &chnNo));
		firstChnNo = chnNo;
		tsErrChk (TS_PropertyGetValNumber (lastChnObj, &errorInfo, "", 0, &chnNo));
		lastChnNo = chnNo; 
	}
	
	//Check Types
	{
		int i;
		VBOOL isArray, isObj;
		tsErrChk (TS_PropertyGetType (dataExprObj, &errorInfo, "", 0, &isObj, &isArray,
									  &typeName, &type));
		if(isArray==VTRUE)
		{
			long numElements;
			tsErrChk (TS_PropertyGetDimensions (dataExprObj, &errorInfo, "", 0,
									  &lowerBounds, &upperBounds, &numElements,
									  &type));
			if(type != TS_PropValType_String && type !=TS_PropValType_Number)
			{
			  		errChk (error = ERROR_INVALID_DATA_TYPE);   
			}
		}
		else
		{
			errChk (error = ERROR_INVALID_DATA_TYPE);
		}

		CLEAR (command, free);
		command = (char *) malloc (sizeof("ChnFormat()") + MAX_INT_CHAR_SIZE + 1);
		for(i = firstChnNo; i <= firstChnNo; i++)
		{
			long chnLen = 0;

			errChk (CA_VariantClear (&cmdVariant)); 
			sprintf (command, "ChnFormat(%d)",i);
			DIAdemErrChk (DIAdem_ITOCommandTextVarGet (commandRef, &errorInfo, command,
																		&cmdVariant, &success));
			CLEAR (stringData, CA_FreeBSTR);
			errChk (CA_VariantGetBSTR (&cmdVariant, &stringData));
			CLEAR (format, CA_FreeMemory);
			errChk (CA_BSTRGetCString (stringData, &format));

			if (strcmp (format, (type==TS_PropValType_String)?"Text":"Numeric")!=0)
			{
				errChk (error = ERROR_CHANNELS_DIFF_TYPE);	
			}
			errChk (CA_VariantClear (&cmdVariant));
			errChk (CA_VariantClear (&lengthAsVariant));
			errChk (CA_VariantSetLong (&cmdVariant, i));
			DIAdemErrChk(DIAdem_ITODataSheetChnLengthGet (dataSheetRef, &errorInfo,
											 cmdVariant, &lengthAsVariant,
											 &success));
			errChk (CA_VariantGetLong (&lengthAsVariant, &chnLen));
			maxChnLen = (chnLen > maxChnLen)?chnLen:maxChnLen;
			
		}	
	}
	
	//Get Data	
	if (type==TS_PropValType_Number)
	{
		errChk (CA_VariantSetLong (&startChnVariant, firstChnNo));
		errChk (CA_VariantSetLong (&endChnVariant, lastChnNo));  			
		DIAdemErrChk (DIAdem_ITODataSheetValueRangeGet (dataSheetRef, &errorInfo, 1,
										  startChnVariant, maxChnLen,
										  endChnVariant, &data, &success));
		tsErrChk (TS_PropertySetValVariant (dataExprObj, &errorInfo, "", 0, data));
		if (firstChnNo == lastChnNo)
		{
			lBounds = (char *) malloc (sizeof("[][]") + 2 * MAX_INT_CHAR_SIZE + 1);
			uBounds = (char *) malloc (sizeof("[][]") + 2 * MAX_INT_CHAR_SIZE + 1); 
			sprintf (lBounds, "[0]");
			if(maxChnLen==0)
				sprintf (uBounds, "[]");
			else
				sprintf (uBounds, "[%d]", maxChnLen-1);   
	 	  	
		}
		else
		{
			lBounds = (char *) malloc (sizeof("[][]") + 2 * MAX_INT_CHAR_SIZE + 1);
			uBounds = (char *) malloc (sizeof("[][]") + 2 * MAX_INT_CHAR_SIZE + 1); 
			sprintf (lBounds, "[0][0]");     
			if(maxChnLen==0)
				sprintf (uBounds, "[][]");
			else
				sprintf (uBounds, "[%d][%d]", maxChnLen-1, lastChnNo - firstChnNo);   		
		
		}
		tsErrChk (TS_PropertySetDimensions (dataExprObj, &errorInfo, "", 0, lBounds,
											uBounds));
	}
	else
	{
		int i, j;
		CLEAR (command, free);
		
		command = (char *) malloc (sizeof("CHT(,)") + 2 *  MAX_INT_CHAR_SIZE + 1);
		lBounds = (char *) malloc (sizeof("[][]") + 2 * MAX_INT_CHAR_SIZE + 1);
		uBounds = (char *) malloc (sizeof("[][]") + 2 * MAX_INT_CHAR_SIZE + 1); 

		if (firstChnNo == lastChnNo)
		{
			sprintf (lBounds, "[0]");
			if (maxChnLen==0)
				sprintf (uBounds, "[]");
			else
				sprintf (uBounds, "[%d]", maxChnLen-1);
		}
		else
		{
		   	sprintf (lBounds, "[0][0]");  
		   	if (maxChnLen==0)
		   	   	sprintf(uBounds, "[][]"); 
		   	else
				sprintf (uBounds, "[%d][%d]", maxChnLen-1, lastChnNo - firstChnNo );
		}
	   	tsErrChk (TS_PropertySetDimensions (dataExprObj, &errorInfo, "", 0, lBounds,
											uBounds));	
			
		for (i = firstChnNo; i <= lastChnNo; i++)
		{
			for (j = 1; j <= maxChnLen; j++)
			{
				errChk (CA_VariantClear (&cmdVariant));
				sprintf (command, "ChT(%d,%d)", j, i);
				DIAdemErrChk (DIAdem_ITOCommandTextVarGet (commandRef, &errorInfo, command,
														   &cmdVariant, &success));
				CLEAR (stringData, CA_FreeBSTR);
				errChk (CA_VariantGetBSTR (&cmdVariant, &stringData));
				CLEAR (format, CA_FreeMemory);  
				errChk (CA_BSTRGetCString (stringData, &format));
				if (firstChnNo== lastChnNo)
				{
					sprintf (lBounds,"[%d]",j-1);
				}
				else
				{
					sprintf (lBounds,"[%d][%d]",j-1,(i-firstChnNo));
				}
				tsErrChk (TS_PropertySetValString (dataExprObj, &errorInfo, lBounds, 0, format));
			}
		}

	}

Error:
	CLEAR (refExprVal, CA_FreeMemory);
	CLEAR (firstChnExprVal, CA_FreeMemory); 
	CLEAR (lastChnExprVal, CA_FreeMemory); 
	CLEAR (dataExprVal, CA_FreeMemory); 
	CLEAR (firstChnName, CA_FreeMemory); 
	CLEAR (lastChnName, CA_FreeMemory); 
	CLEAR (typeName, CA_FreeMemory); 
	CLEAR (format, CA_FreeMemory); 
	CLEAR (upperBounds, CA_FreeMemory); 
	CLEAR (lowerBounds, CA_FreeMemory); 
	CLEAR (refObj, CA_DiscardObjHandle); 
	CLEAR (commandRef, CA_DiscardObjHandle);
	CLEAR (dataSheetRef, CA_DiscardObjHandle);
	CLEAR (firstChnObj, CA_DiscardObjHandle);
	CLEAR (lastChnObj, CA_DiscardObjHandle);
	CLEAR (dataExprObj, CA_DiscardObjHandle);
	CLEAR (command, free);
	CLEAR (lBounds, free); 
	CLEAR (uBounds, free); 
	CLEAR (stringData, CA_FreeBSTR);  
	CA_VariantClear(&cmdVariant);
	CA_VariantClear(&lengthAsVariant);
	CA_VariantClear(&startChnVariant);
	CA_VariantClear(&endChnVariant);
	CA_VariantClear(&data);

	
	if (error < 0)
    {
    	switch (error)
		{
		   	case ERROR_DIADEM_COM_ERROR:
				TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "DIADEM_ERR_MSG", NULL, RSTRING_SIZE, (char *) &errMsg);
				error = TS_Err_ProgramError;
			break;
			
			case ERROR_INVALID_DATA_TYPE:
				TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "DATA_TYPE_ERR_MSG", NULL, RSTRING_SIZE, (char *) &errMsg);
				error = TS_Err_TypeMismatchError;
			break;
			
			case ERROR_CHANNELS_DIFF_TYPE:
				TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								 "CHN_DIFF_TYPE_ERR_MSG", NULL, RSTRING_SIZE, (char *) &errMsg);
				error = TS_Err_TypeMismatchError;
			break;
			
			case ERROR_CHANNEL_NOT_FOUND:
				TS_GetResourceString (context, TS_DIADEM_IMPORT_HEADER,
								"CHN_NOT_FOUND_ERR_MSG", NULL, RSTRING_SIZE, (char *) &errMsg);
				error = TS_Err_ProgramError;
			break;
		}
		TS_SetStepError (context, error, errMsg);   
	}
}
