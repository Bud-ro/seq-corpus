#define RSTRING_SIZE					512  

#define TS_DIADEM_REF_COMMAND_REF 	"CommandReference"
#define TS_DIADEM_REF_DATASHEET_REF "DataSheetReference"
#define TS_STEP_ERROR_CODE			"Step.Result.Error.Code"
#define TS_STEP_ERROR_OCC			"Step.Result.Error.Occurred"
#define TS_STEP_ERROR_MSG			"Step.Result.Error.Msg"

#define TS_DIADEM_INV_TYPE_ERR	  		-1400    
#define ERROR_INVALID_DIMENSIONS		-1401
#define ERROR_DIADEM_COM_ERROR			-1402
#define ERROR_INVALID_DATA_TYPE			-1403
#define ERROR_CHANNEL_NOT_FOUND			-1404   
#define ERROR_CHANNELS_DIFF_TYPE		-1405

#define MAX_INT_CHAR_SIZE				20  

#define TS_DIADEM_REF_TYPE			"DIAdem_Reference"

#define CLEAR(__handle, __func)             \
    if(__handle)     	              		\
    {			                            \
        __func(__handle);     		   	    \
        __handle = 0;                       \
    }

#define DIAdemErrChk(fCall)\
\
tsErrChk(fCall);\
if((success!=1))\
{\
	errChk(error = ERROR_DIADEM_COM_ERROR);\
}


int CheckExpr(int panel, int controlID, int * gotoError);
int DetermineBounds(char * lowerBounds, char * upperBounds, int *dimensions, int *chnLen, int *numChn);
