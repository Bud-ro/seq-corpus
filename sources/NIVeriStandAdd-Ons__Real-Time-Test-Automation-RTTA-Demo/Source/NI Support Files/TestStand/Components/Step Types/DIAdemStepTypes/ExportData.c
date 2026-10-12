#include "DIAdem.h"
#include "tsutil.h"
#include <cvirte.h>		
#include <userint.h>
#include "DIAdemSteps.h"
#include "common.h"

#define TS_DIADEM_EXPORT_REF_EXPR		"Step.DIAdemRefExpr"  
#define TS_DIADEM_EXPORT_SOURCE_EXPR	"Step.SourceDataExpr"
#define TS_DIADEM_EXPORT_CHANNEL_EXPR	"Step.ChannelExpr"
#define TS_DIADEM_EXPORT_USE_NAME		"Step.UseName"
#define TS_DIADEM_EXPORT_CREATE_CHANNEL	"Step.CreateChannel"

#define TS_DIADEM_EXPORT_HEADER			"EXPORT_DIADEM_CHN_STEP_TYPE"

static int panel;

void DLLEXPORT DIAdemExportChnEdit(CAObjHandle context)
{
	int error = 0;
    ERRORINFO errorInfo;
 	ErrMsg errMsg;  

	CAObjHandle refExpr = 0, firstChnExpr = 0, dataSourceExpr = 0;  
	char *dataSourceExprVal = 0, *refExprVal  = 0, *channelExprVal = 0;
	
	VBOOL createChn, useName;
	int createChnInt, useNameInt, clickedOK;
    TSModalData tsModalData;
    char string[RSTRING_SIZE];

    errChk (panel = LoadPanelEx (0, "DIAdemSteps.uir", EXPORTCHN, __CVIUserHInst));
    
    //Localize Controls
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
									"EDIT_DIALOG_TITLE", NULL, RSTRING_SIZE, string));
	errChk (SetPanelAttribute (panel, ATTR_TITLE, string));
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
									"EDIT_DIALOG_OK_BTN", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, EXPORTCHN_OKBTN, ATTR_LABEL_TEXT, string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
									"EDIT_DIALOG_CANCEL_BTN", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, EXPORTCHN_CANCELBTN, ATTR_LABEL_TEXT, string));
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
									"EDIT_DIALOG_REF", NULL, RSTRING_SIZE, string));
	errChk (SetCtrlAttribute (panel, EXPORTCHN_DIADEMREFEXPR, ATTR_LABEL_TEXT,
							  string));
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
									"EDIT_DIALOG_FIRST_CHN", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, EXPORTCHN_FIRSTCHANNEL, ATTR_LABEL_TEXT,
							  string));
							 
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
									"EDIT_DIALOG_CHN_NAME", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, EXPORTCHN_NAMERADIO, ATTR_LABEL_TEXT, string));
    tsErrChk (TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
									"EDIT_DIALOG_CHN_NO", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, EXPORTCHN_NUMBERRADIO, ATTR_LABEL_TEXT,
							  string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
									"EDIT_DIALOG_DATA_SOURCE", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, EXPORTCHN_DATASOURCE, ATTR_LABEL_TEXT,
							  string));
	tsErrChk (TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
									"EDIT_DIALOG_CREATE_CHN", NULL, RSTRING_SIZE,
									string));
	errChk (SetCtrlAttribute (panel, EXPORTCHN_CREATECHN, ATTR_LABEL_TEXT, string));

	//Setup Expression Edit Controls 
   	errChk (GetObjHandleFromActiveXCtrl (panel, EXPORTCHN_DIADEMREFEXPR, &refExpr));
	errChk (GetObjHandleFromActiveXCtrl (panel, EXPORTCHN_FIRSTCHANNEL, &firstChnExpr));
    errChk (GetObjHandleFromActiveXCtrl (panel, EXPORTCHN_DATASOURCE, &dataSourceExpr));
    
    tsErrChk (TSUI_ExpressionEditSetByRefContext (refExpr, &errorInfo, context));
    tsErrChk (TSUI_ExpressionEditSetByRefContext (firstChnExpr, &errorInfo, context)); 
    tsErrChk (TSUI_ExpressionEditSetByRefContext (dataSourceExpr, &errorInfo, context)); 
    
    //Load Step Properties
    tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_EXPORT_REF_EXPR, 0, &refExprVal));
    tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_EXPORT_SOURCE_EXPR, 0,
									   &dataSourceExprVal));
    tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_EXPORT_CHANNEL_EXPR, 0,
									   &channelExprVal));
    tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo,
										TS_DIADEM_EXPORT_USE_NAME, 0, &useName));
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo,
										TS_DIADEM_EXPORT_CREATE_CHANNEL, 0,
										&createChn));
					    
	//Set Control Values
	tsErrChk (TSUI_ExpressionEditSetRequiredTypes (firstChnExpr, NULL,
												   (useName==VTRUE) ? 4 : 2));
	errChk (SetCtrlVal (panel,
					   (useName==VTRUE) ? EXPORTCHN_NAMERADIO : EXPORTCHN_NUMBERRADIO,
					   TRUE));
	errChk (SetCtrlVal (panel,
						(useName!=VTRUE) ? EXPORTCHN_NAMERADIO : EXPORTCHN_NUMBERRADIO,
						FALSE));
	errChk (SetCtrlVal (panel, EXPORTCHN_CREATECHN,
						(createChn==VTRUE) ? TRUE : FALSE));
	tsErrChk (TSUI_ExpressionEditSetText (refExpr, &errorInfo, refExprVal));
	tsErrChk (TSUI_ExpressionEditSetText (dataSourceExpr, &errorInfo,
										  dataSourceExprVal));
	tsErrChk (TSUI_ExpressionEditSetText (firstChnExpr, &errorInfo, channelExprVal));
	
	//Run UI
	tsErrChk (TS_StartModalDialog (context, &errorInfo, &tsModalData));
	errChk (InstallPopup (panel));
	clickedOK = RunUserInterface ();
	
	//Save Values
	if(clickedOK)
	{
		int createChn;
		int useName;
		CLEAR (refExprVal, CA_FreeMemory);
		CLEAR (dataSourceExprVal, CA_FreeMemory);
		CLEAR (channelExprVal, CA_FreeMemory);
		tsErrChk (TSUI_ExpressionEditGetText (refExpr, &errorInfo, &refExprVal));
		tsErrChk (TSUI_ExpressionEditGetText (dataSourceExpr, &errorInfo,
											  &dataSourceExprVal));
		tsErrChk (TSUI_ExpressionEditGetText (firstChnExpr, &errorInfo, &channelExprVal));
		errChk (GetCtrlVal (panel, EXPORTCHN_NAMERADIO, &useNameInt));
		errChk (GetCtrlVal (panel, EXPORTCHN_CREATECHN, &createChnInt));
		
		tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_EXPORT_REF_EXPR, 0, refExprVal));
		tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_EXPORT_SOURCE_EXPR, 0,
										   dataSourceExprVal));
		tsErrChk (TS_PropertySetValString (context, &errorInfo,
										   TS_DIADEM_EXPORT_CHANNEL_EXPR, 0,
										   channelExprVal));
		tsErrChk (TS_PropertySetValBoolean (context, &errorInfo,
											TS_DIADEM_EXPORT_USE_NAME, 0,
											useNameInt?VTRUE:VFALSE));
		tsErrChk (TS_PropertySetValBoolean (context, &errorInfo,
											TS_DIADEM_EXPORT_CREATE_CHANNEL, 0,
											createChnInt?VTRUE:VFALSE));
	}
	

Error:
	RemovePopup(panel);
   	TS_EndModalDialog (&errorInfo, &tsModalData); 
	CLEAR (refExpr,CA_DiscardObjHandle);
	CLEAR (firstChnExpr,CA_DiscardObjHandle);
	CLEAR (dataSourceExpr, CA_DiscardObjHandle);
	CLEAR (refExprVal, CA_FreeMemory);
	CLEAR (dataSourceExprVal, CA_FreeMemory);
	CLEAR (channelExprVal, CA_FreeMemory);
	if(error < 0)
		TS_DisplayError (error, errMsg, context);  
	return;
}



int CVICALLBACK ExportChnCancelCallback (int panel, int control, int event,
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

int CVICALLBACK ExportChnOKCallback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	int error = 0; 
	int gotoError = 0; 
	switch (event)
		{
		case EVENT_COMMIT:
			errChk(CheckExpr(panel, EXPORTCHN_DIADEMREFEXPR, &gotoError));
			if(!gotoError)
			{
				errChk(CheckExpr(panel, EXPORTCHN_FIRSTCHANNEL, &gotoError));
				if(!gotoError)
				{
					errChk(CheckExpr(panel, EXPORTCHN_DATASOURCE, &gotoError)); 
					if(!gotoError)
						QuitUserInterface (1);
				}
			}
		
			break;
		}
	Error:
	
	return error;
}


int CVICALLBACK ExportRadioCallback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	int error = 0;
	ERRORINFO errorInfo;
	ErrMsg errMsg;

	CAObjHandle firstChnExpr = 0;
	switch (event)
		{
		case EVENT_COMMIT:
				errChk(SetCtrlVal (panel, EXPORTCHN_NAMERADIO, FALSE));
				errChk(SetCtrlVal (panel, EXPORTCHN_NUMBERRADIO, FALSE));
				errChk(SetCtrlVal (panel, control, TRUE));
				errChk(GetObjHandleFromActiveXCtrl (panel, EXPORTCHN_FIRSTCHANNEL,
													&firstChnExpr));
				tsErrChk(TSUI_ExpressionEditSetRequiredTypes (firstChnExpr, &errorInfo,
															  (control==EXPORTCHN_NAMERADIO) ? 4 : 2));
				
			break;
		}
Error:
	
	CLEAR(firstChnExpr,CA_DiscardObjHandle);
	return error;
}




void DLLEXPORT DIAdemExportChn(CAObjHandle context)
{
	ErrMsg errMsg  = "";
	int error = 0;
	ERRORINFO errorInfo;
	//allocated by TS
	char * refExpr = NULL, * dataSourceExpr = NULL, * channelExpr = NULL, * firstChnName = NULL,
		 * lowerBounds = NULL, *upperBounds = NULL, * stringVal = NULL;
	
	//allocated by malloc
	char * useFirstChnName = NULL, * newLowerBounds = NULL, * newUpperBounds = NULL, * command  = NULL;
	CAObjHandle diademRefObj = 0, dataSheetRef = 0, commandRef = 0, dataToExport = 0,
	            channelObj = 0, dataToExportClone = 0;
	VBOOL createChn, useName;
	VARIANT cmdVariant = CA_VariantEmpty(), dataAsVariant = CA_VariantEmpty(),
			startChnAsVariant = CA_VariantEmpty(), endChnAsVariant = CA_VariantEmpty();
	long firstChnNum = 0;
	int numDims = 0, chnLen = 0, numChannels = 0;
	enum TSEnum_PropertyValueTypes chnType; 
	BSTR * stringArray  = NULL;
					   
	//Get DIAdem Reference
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_EXPORT_REF_EXPR, 0, &refExpr));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, refExpr, 0, &diademRefObj));
	tsErrChk (TS_PropertyGetValIDispatch (diademRefObj, &errorInfo,
										  TS_DIADEM_REF_DATASHEET_REF, 0,
										  &dataSheetRef));
	tsErrChk (TS_PropertyGetValIDispatch (diademRefObj, &errorInfo,
										  TS_DIADEM_REF_COMMAND_REF, 0, &commandRef));
	
	//Get Data Source
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_EXPORT_SOURCE_EXPR, 0,
									   &dataSourceExpr));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, dataSourceExpr, 0,
									 &dataToExport));
	{

		long numElements;
		tsErrChk (TS_PropertyGetDimensions (dataToExport, &errorInfo, "", 0,
											&lowerBounds, &upperBounds, &numElements,
											&chnType));
	}
	
	errChk (DetermineBounds (lowerBounds, upperBounds, &numDims, &chnLen, &numChannels));   
	tsErrChk (TS_PropertyClone (dataToExport, &errorInfo, "", 0, &dataToExportClone));
	
    if(numDims ==1)
    {
    	newLowerBounds = (char *) malloc(strlen(lowerBounds)+4);
    	newUpperBounds = (char *) malloc(strlen(upperBounds)+4);
    	sprintf (newLowerBounds,"%s[0]",lowerBounds);
    	sprintf (newUpperBounds,"%s[0]",upperBounds);
   		tsErrChk (TS_PropertySetDimensions (dataToExportClone, &errorInfo, "", 0,
										   newLowerBounds, newUpperBounds));
    }
    else if(numDims!=2)
	{
		errChk (error = ERROR_INVALID_DIMENSIONS);
    }
   	if(chnType != TS_PropValType_String && chnType !=TS_PropValType_Number)
   	{
   		errChk (error = ERROR_INVALID_DATA_TYPE);
   	}
	//Get Create Channel Val
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo,
										TS_DIADEM_EXPORT_CREATE_CHANNEL, 0,
										&createChn));
	//Get First Channel Info
	tsErrChk (TS_PropertyGetValBoolean (context, &errorInfo,
										TS_DIADEM_EXPORT_USE_NAME, 0, &useName));
	tsErrChk (TS_PropertyGetValString (context, &errorInfo,
									   TS_DIADEM_EXPORT_CHANNEL_EXPR, 0,
									   &channelExpr));
	tsErrChk (TS_PropertyEvaluateEx (context, &errorInfo, channelExpr, 0,
									 &channelObj));

	if(createChn==VTRUE)
	{
		long success = 0;
		command = (char *) malloc (sizeof("CNo('free')")+1);
		strcpy (command, "CNo('free')");  
 		cmdVariant = CA_VariantLong(0);
 		DIAdemErrChk (DIAdem_ITOCommandIntegerVarGet (commandRef, &errorInfo, command,
													  &cmdVariant, &success));
 		errChk (CA_VariantGetLong (&cmdVariant, &firstChnNum));
 		if(firstChnNum ==0)
		{
 		
 			CLEAR (command, free);
 			command = (char *) malloc (sizeof("GlobUsedChn")+ 1);
			strcpy (command, "GlobUsedChn");
			CA_VariantClear (&cmdVariant);
			cmdVariant = CA_VariantLong (0);  
			DIAdemErrChk (DIAdem_ITOCommandIntegerVarGet (commandRef, &errorInfo, command,
														  &cmdVariant, &success));
			errChk (CA_VariantGetLong (&cmdVariant, &firstChnNum));
			firstChnNum++;  
		}
		if(useName==VTRUE)
		{
			tsErrChk (TS_PropertyGetValString (channelObj, &errorInfo, "", 0, &firstChnName));
			useFirstChnName  = (char *) malloc(strlen(firstChnName)+1);
			strcpy(useFirstChnName, firstChnName);
		}
		else
		{
			useFirstChnName  = (char *) malloc(sizeof("Unnamed Channel")+1);
			strcpy(useFirstChnName, "Unnamed Channel");
		}
		{
			char dataType[20];
			char displayFormat[20];
			if(chnType ==TS_PropValType_String)
			{
				strncpy (dataType, "DataTypeString",20);
				strncpy (displayFormat, "'Text'",20);
		
			}
			else if(chnType==TS_PropValType_Number)
			{
			   	strncpy (dataType, "DataTypeFloat64",20);
				strncpy (displayFormat, "'Numeric'",20);
			}
			CA_VariantClear (&cmdVariant);
			CLEAR (command, free);
			command = (char *) malloc
										(sizeof ("ChnAlloc('',,,,)") + 2 * MAX_INT_CHAR_SIZE 
									   	+ strlen(useFirstChnName) + strlen(dataType) +
										strlen(displayFormat) + 1);
			sprintf (command, "ChnAlloc('%s',%d,%d,%s,%s)", useFirstChnName, chnLen, numChannels, 
					 dataType, displayFormat);
			errChk (CA_VariantSetCString (&cmdVariant, command));
			DIAdemErrChk (DIAdem_ITOCommandCmdExecuteSync (commandRef, &errorInfo, cmdVariant,
														   &success));
		}
	}
	else
	{
		if(useName==VTRUE)
		{
			long success = 0;  
			tsErrChk (TS_PropertyGetValString (channelObj, &errorInfo, "", 0, &firstChnName));
			useFirstChnName = (char *) malloc(strlen(firstChnName)+1);
			strcpy(useFirstChnName, firstChnName);
			CLEAR (command, free);
			command = (char *) malloc(sizeof("CNo('')") + strlen(useFirstChnName) + 1);
			sprintf(command, "CNo('%s')",useFirstChnName);	
 			cmdVariant = CA_VariantLong(0);
 			DIAdemErrChk (DIAdem_ITOCommandIntegerVarGet (commandRef, &errorInfo, command,
														  &cmdVariant, &success));
 			errChk (CA_VariantGetLong(&cmdVariant, &firstChnNum));
 			
			
		}
		else
		{
			double chnNo;
			tsErrChk (TS_PropertyGetValNumber (channelObj, &errorInfo, "", 0, &chnNo));
			firstChnNum = chnNo;
			useFirstChnName  = (char *) malloc(sizeof("Unnamed Channel")+1);
			strcpy(useFirstChnName, "Unnamed Channel");	
		}
	}
	

	if(chnType ==TS_PropValType_String) 
	{
		unsigned int chns = 0, rows = 0, chn = 0, row = 0;
		long success = 0;
		tsErrChk (TS_PropertyGetValVariant (dataToExportClone, &errorInfo, "", 0,
											&dataAsVariant));
		errChk (CA_VariantGet2DArray (&dataAsVariant, CAVT_BSTR, &stringArray,
									 &rows, &chns));
	   
		for (row = 0; row < rows; row++)
		{
			for (chn = 0; chn < chns; chn++)
			{
			   	CLEAR (stringVal, CA_FreeMemory);
				errChk (CA_BSTRGetCString ((stringArray[row * chns + chn]), &stringVal));
				CLEAR (command, free);
				command = (char *) malloc(sizeof("CHT(,):= ''") + 2* MAX_INT_CHAR_SIZE + 1 + 
				                          strlen(stringVal));
				sprintf (command, "ChT(%d,%d):= '%s'",row + 1 , chn + firstChnNum, stringVal);
				errChk (CA_VariantClear(&cmdVariant));
				errChk(CA_VariantSetCString (&cmdVariant, command));  
				DIAdemErrChk (DIAdem_ITOCommandCmdExecuteSync (commandRef, &errorInfo, cmdVariant,
															   &success));
															 
				CLEAR (stringArray[row * chns + chn], CA_FreeBSTR);
			}
		}

	}
	else
	{
		long success = 0;
		tsErrChk (TS_PropertyGetValVariant (dataToExportClone, &errorInfo, "", 0, &dataAsVariant));
		startChnAsVariant = CA_VariantLong (firstChnNum);
		endChnAsVariant = CA_VariantLong (firstChnNum + numChannels - 1);
		DIAdemErrChk (DIAdem_ITODataSheetValueRangeSet (dataSheetRef, &errorInfo, 1,
														startChnAsVariant, chnLen,
														endChnAsVariant, dataAsVariant,
														&success));
	}
Error:
	CLEAR (refExpr, CA_FreeMemory);
	CLEAR (dataSourceExpr, CA_FreeMemory);
	CLEAR (channelExpr, CA_FreeMemory);
	CLEAR (firstChnName, CA_FreeMemory);    
	CLEAR (lowerBounds, CA_FreeMemory);  	
	CLEAR (upperBounds, CA_FreeMemory);  
	CLEAR (stringVal, CA_FreeMemory);
	CLEAR (diademRefObj, CA_DiscardObjHandle);
	CLEAR (dataSheetRef, CA_DiscardObjHandle);
	CLEAR (commandRef, CA_DiscardObjHandle);
	CLEAR (dataToExport, CA_DiscardObjHandle); 
	CLEAR (channelObj, CA_DiscardObjHandle);
	CLEAR (dataToExportClone, CA_DiscardObjHandle); 
	CLEAR (useFirstChnName, free);
	CLEAR (newLowerBounds, free);
	CLEAR (newUpperBounds, free);
	CLEAR (command, free);
	CLEAR (stringArray, CA_FreeMemory);   
	CA_VariantClear (&cmdVariant);
	CA_VariantClear (&dataAsVariant);
	CA_VariantClear (&startChnAsVariant);
	CA_VariantClear (&endChnAsVariant);
	CLEAR (stringArray, CA_FreeMemory);
	if (error < 0)
    {
        switch (error)
        {
			case ERROR_INVALID_DIMENSIONS:
			    TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
								 "INVALID_DIMENSIONS_ERR_MSG", NULL, RSTRING_SIZE, (char *) &errMsg);
				error = TS_Err_TypeMismatchError;
				
			break;
			
			case ERROR_DIADEM_COM_ERROR:
				TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
								 "DIADEM_ERR_MSG", NULL, RSTRING_SIZE, (char *) &errMsg);
				error = TS_Err_ProgramError;
			break;
			
			case ERROR_INVALID_DATA_TYPE:
				TS_GetResourceString (context, TS_DIADEM_EXPORT_HEADER,
								 "DATA_TYPE_ERR_MSG", NULL, RSTRING_SIZE, (char *) &errMsg);
				error = TS_Err_TypeMismatchError;
			break;
			
        }
		TS_SetStepError (context, error, errMsg);
	}

}


