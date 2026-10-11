#include <cvirte.h>		
#include <userint.h>
#include "tsutil.h" 
#include "common.h"

int CheckExpr(int panel, int controlID, int * gotoError)
{
	ERRORINFO errorInfo;  
	int error = 0;
	ErrMsg errMsg;
	
	char *errorMsg = NULL;   
	CAObjHandle context = 0, control = 0;
	
	enum TSUIEnum_TSError tsError;  
	long startPos, endPos;    
	int selectedButton=0; 
	char messageTitle[RSTRING_SIZE], gotoBtnTxt[RSTRING_SIZE], ignoreBtnTxt[RSTRING_SIZE];
	
	errChk (GetObjHandleFromActiveXCtrl (panel, controlID, &control))
	tsErrChk (TSUI_ExpressionEditCheckExpression (control, &errorInfo, &errorMsg,
												  &startPos, &endPos, &tsError));
	if (tsError != TSUIConst_TS_Err_NoError)
	{


		tsErrChk (TSUI_ExpressionEditGetContext (control, &errorInfo, &context));
		 
		tsErrChk (TS_GetResourceString (context, "TS_UTIL", "SYNTAX_ERROR_TITLE", NULL,
										 RSTRING_SIZE, messageTitle));
		
		tsErrChk (TS_GetResourceString (context, "TS_UTIL", "GOTO_ERR_BTN", NULL,
										 RSTRING_SIZE, gotoBtnTxt));
										 
		tsErrChk (TS_GetResourceString (context, "TS_UTIL", "IGNORE_BTN", NULL,
										 RSTRING_SIZE, ignoreBtnTxt));										
		tsErrChk (TS_ConfirmPopup (context, messageTitle, errorMsg, gotoBtnTxt,
											  ignoreBtnTxt, &selectedButton));
		if (selectedButton==1)
		{
			tsErrChk (TSUI_ExpressionEditSetSelStart (control, &errorInfo, startPos));
			tsErrChk (TSUI_ExpressionEditSetSelLength (control, &errorInfo,
											 endPos-startPos+1));
			errChk (SetActiveCtrl (panel, controlID));
		}
		

	}
Error:
	CLEAR (control, CA_DiscardObjHandle);
	CLEAR (context, CA_DiscardObjHandle);  
	CLEAR (errorMsg, CA_FreeMemory);
	
    *gotoError = (selectedButton==1);
    return error;
	
}


int DetermineBounds(char * lowerBounds, char * upperBounds, int *dimensions, int *chnLen, int *numChn)
{
	int dimCount = 0;
	int bound1  = 1, bound2 = 1;
	while(*lowerBounds!='\0')
	{
		if(*lowerBounds=='[')
		{
			
			if(dimCount==0)
			{
				bound1 = atoi(lowerBounds+1);
			}
			else if(dimCount==1)
			{
				bound2 = atoi(lowerBounds+1);
			}
			
			dimCount++;
		
		}
		lowerBounds++;
	}

	dimCount= 0;
	
	while(*upperBounds!='\0')
	{
		if(*upperBounds=='[')
		{
			
			if(dimCount==0)
			{
				bound1 = atoi(upperBounds+1) - bound1 + 1;
			}
			else if(dimCount==1)
			{
				
				bound2 = atoi(upperBounds+1) - bound2+1;
			}
			
			dimCount++;
		
		}
		upperBounds++;
	}
	*dimensions = dimCount;	

	if(dimCount==1)
	{
		*chnLen = bound1;
		*numChn = 1;
	}
	else
	{
		*chnLen = bound1;
		*numChn = bound2;
	}
	
	return 0;
}

