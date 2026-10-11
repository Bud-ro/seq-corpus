#include "DIAdem.h"

typedef interface tagDIAdem_ITOCommand_Interface DIAdem_ITOCommand_Interface;

typedef struct tagDIAdem_ITOCommand_VTable
{
	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( DIAdem_ITOCommand_Interface __RPC_FAR * This, 
	                                                         REFIID riid, 
	                                                         void __RPC_FAR *__RPC_FAR *ppvObject);

	ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( DIAdem_ITOCommand_Interface __RPC_FAR * This);

	ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( DIAdem_ITOCommand_Interface __RPC_FAR * This);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( DIAdem_ITOCommand_Interface __RPC_FAR * This, 
	                                                           UINT __RPC_FAR *pctinfo);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( DIAdem_ITOCommand_Interface __RPC_FAR * This, 
	                                                      UINT iTInfo, 
	                                                      LCID lcid, 
	                                                      ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( DIAdem_ITOCommand_Interface __RPC_FAR * This, 
	                                                        REFIID riid, 
	                                                        LPOLESTR __RPC_FAR *rgszNames, 
	                                                        UINT cNames, 
	                                                        LCID lcid, 
	                                                        DISPID __RPC_FAR *rgDispId);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( DIAdem_ITOCommand_Interface __RPC_FAR * This, 
	                                                 DISPID dispIdMember, 
	                                                 REFIID riid, 
	                                                 LCID lcid, 
	                                                 WORD wFlags, 
	                                                 DISPPARAMS __RPC_FAR *pDispParams, 
	                                                 VARIANT __RPC_FAR *pVarResult, 
	                                                 EXCEPINFO __RPC_FAR *pExcepInfo, 
	                                                 UINT __RPC_FAR *puArgErr);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *CmdExecuteSync_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                         VARIANT vCmdV, 
	                                                         long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *TextVarGet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                     BSTR sgVarNameV, 
	                                                     VARIANT *vValueP, 
	                                                     long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *DoubleVarGet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                       BSTR sgVarNameV, 
	                                                       VARIANT *vValueP, 
	                                                       long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *IntegerVarGet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                        BSTR sgVarNameV, 
	                                                        VARIANT *vValueP, 
	                                                        long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *TextVarSet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                     BSTR sgVarNameV, 
	                                                     BSTR sgValueV, 
	                                                     long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *DoubleVarSet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                       BSTR sgVarNameV, 
	                                                       VARIANT vValueV, 
	                                                       long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *IntegerVarSet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                        BSTR sgVarNameV, 
	                                                        VARIANT vValueV, 
	                                                        long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *CmdExecuteAsync_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                          VARIANT vCmdV, 
	                                                          long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *CmdAbort_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                   long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoMsgDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                           VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoMsgDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                           VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoErrorDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                             VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoErrorDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                             VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoInfoDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                            VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoInfoDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                            VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoWarningDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                               VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoWarningDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                               VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoDialogDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                              VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoDialogDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                              VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoActivityDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                                VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoActivityDisplay_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                                VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *NoValueGet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                     VARIANT *vNoValueP, 
	                                                     long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *NoValueSet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                     VARIANT vNoValueV, 
	                                                     long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *BoolVarGet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                     BSTR sgVarNameV, 
	                                                     VARIANT *vValueP, 
	                                                     long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *BoolVarSet_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                     BSTR sgVarNameV, 
	                                                     VARIANT vValueV, 
	                                                     long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbInterfaceLocked_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                              VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbInterfaceLocked_) (DIAdem_ITOCommand_Interface __RPC_FAR *This, 
	                                                              VBOOL value);

} DIAdem_ITOCommand_VTable;

typedef interface tagDIAdem_ITOCommand_Interface
{
	CONST_VTBL DIAdem_ITOCommand_VTable __RPC_FAR *lpVtbl;
} DIAdem_ITOCommand_Interface;

typedef interface tagDIAdem_ITODataSheet_Interface DIAdem_ITODataSheet_Interface;

typedef struct tagDIAdem_ITODataSheet_VTable
{
	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( DIAdem_ITODataSheet_Interface __RPC_FAR * This, 
	                                                         REFIID riid, 
	                                                         void __RPC_FAR *__RPC_FAR *ppvObject);

	ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( DIAdem_ITODataSheet_Interface __RPC_FAR * This);

	ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( DIAdem_ITODataSheet_Interface __RPC_FAR * This);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( DIAdem_ITODataSheet_Interface __RPC_FAR * This, 
	                                                           UINT __RPC_FAR *pctinfo);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( DIAdem_ITODataSheet_Interface __RPC_FAR * This, 
	                                                      UINT iTInfo, 
	                                                      LCID lcid, 
	                                                      ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( DIAdem_ITODataSheet_Interface __RPC_FAR * This, 
	                                                        REFIID riid, 
	                                                        LPOLESTR __RPC_FAR *rgszNames, 
	                                                        UINT cNames, 
	                                                        LCID lcid, 
	                                                        DISPID __RPC_FAR *rgDispId);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( DIAdem_ITODataSheet_Interface __RPC_FAR * This, 
	                                                 DISPID dispIdMember, 
	                                                 REFIID riid, 
	                                                 LCID lcid, 
	                                                 WORD wFlags, 
	                                                 DISPPARAMS __RPC_FAR *pDispParams, 
	                                                 VARIANT __RPC_FAR *pVarResult, 
	                                                 EXCEPINFO __RPC_FAR *pExcepInfo, 
	                                                 UINT __RPC_FAR *puArgErr);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnValSet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                    long nRowV, 
	                                                    VARIANT vChnV, 
	                                                    VARIANT vValueV, 
	                                                    long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnValGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                    long nRowV, 
	                                                    VARIANT vChnV, 
	                                                    VARIANT *vValueP, 
	                                                    long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ValueRangeSet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                        long nStartRowV, 
	                                                        VARIANT vStartChnV, 
	                                                        long nEndRowV, 
	                                                        VARIANT vEndChnV, 
	                                                        VARIANT vValueV, 
	                                                        long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ValueRangeGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                        long nStartRowV, 
	                                                        VARIANT vStartChnV, 
	                                                        long nEndRowV, 
	                                                        VARIANT vEndChnV, 
	                                                        VARIANT *vValueP, 
	                                                        long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnNameGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                     VARIANT vChnV, 
	                                                     VARIANT *vNameP, 
	                                                     long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnNameSet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                     VARIANT vChnV, 
	                                                     BSTR sgNameV, 
	                                                     long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnLengthGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                       VARIANT vChnV, 
	                                                       VARIANT *vLengthP, 
	                                                       long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnLengthSet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                       VARIANT vChnV, 
	                                                       long nLengthV, 
	                                                       long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnCommentGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                        VARIANT vChnV, 
	                                                        VARIANT *vCommentP, 
	                                                        long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnCommentSet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                        VARIANT vChnV, 
	                                                        BSTR sgCommentV, 
	                                                        long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnDimGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                    VARIANT vChnV, 
	                                                    VARIANT *vDimensionP, 
	                                                    long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnDimSet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                    VARIANT vChnV, 
	                                                    BSTR sgDimensionV, 
	                                                    long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *MaxChnLengthGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                          VARIANT vChnV, 
	                                                          VARIANT *vMaxLengthP, 
	                                                          long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *MaxChnCountGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                         VARIANT *vCountV, 
	                                                         long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnParamsUpdate_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                          VARIANT vStartChnV, 
	                                                          VARIANT vEndChnV, 
	                                                          long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *UpdateParamsLock_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                           long nStateV, 
	                                                           long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoMsgDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                           VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoMsgDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                           VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoErrorDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                             VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoErrorDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                             VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoInfoDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                            VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoInfoDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                            VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoWarningDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                               VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoWarningDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                               VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoDialogDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                              VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoDialogDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                              VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbNoActivityDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                                VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbNoActivityDisplay_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                                VBOOL value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ValueRangeFormatedSet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                                long nStartRowV, 
	                                                                VARIANT vStartChnV, 
	                                                                long nEndRowV, 
	                                                                VARIANT vEndChnV, 
	                                                                VARIANT vValueV, 
	                                                                long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ValueRangeFormatedGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                                long nStartRowV, 
	                                                                VARIANT vStartChnV, 
	                                                                long nEndRowV, 
	                                                                VARIANT vEndChnV, 
	                                                                VARIANT *vValueP, 
	                                                                long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnDataTypeGet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                         VARIANT vChnV, 
	                                                         VARIANT *vDataTypeP, 
	                                                         long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ChnDataTypeSet_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                         VARIANT vChnV, 
	                                                         BSTR dataTypeV, 
	                                                         long *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetbInterfaceLocked_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                              VBOOL *value);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *SetbInterfaceLocked_) (DIAdem_ITODataSheet_Interface __RPC_FAR *This, 
	                                                              VBOOL value);

} DIAdem_ITODataSheet_VTable;

typedef interface tagDIAdem_ITODataSheet_Interface
{
	CONST_VTBL DIAdem_ITODataSheet_VTable __RPC_FAR *lpVtbl;
} DIAdem_ITODataSheet_Interface;

typedef interface tagDIAdem_ITOCHMHelper_Interface DIAdem_ITOCHMHelper_Interface;

typedef struct tagDIAdem_ITOCHMHelper_VTable
{
	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( DIAdem_ITOCHMHelper_Interface __RPC_FAR * This, 
	                                                         REFIID riid, 
	                                                         void __RPC_FAR *__RPC_FAR *ppvObject);

	ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( DIAdem_ITOCHMHelper_Interface __RPC_FAR * This);

	ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( DIAdem_ITOCHMHelper_Interface __RPC_FAR * This);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( DIAdem_ITOCHMHelper_Interface __RPC_FAR * This, 
	                                                           UINT __RPC_FAR *pctinfo);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( DIAdem_ITOCHMHelper_Interface __RPC_FAR * This, 
	                                                      UINT iTInfo, 
	                                                      LCID lcid, 
	                                                      ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( DIAdem_ITOCHMHelper_Interface __RPC_FAR * This, 
	                                                        REFIID riid, 
	                                                        LPOLESTR __RPC_FAR *rgszNames, 
	                                                        UINT cNames, 
	                                                        LCID lcid, 
	                                                        DISPID __RPC_FAR *rgDispId);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( DIAdem_ITOCHMHelper_Interface __RPC_FAR * This, 
	                                                 DISPID dispIdMember, 
	                                                 REFIID riid, 
	                                                 LCID lcid, 
	                                                 WORD wFlags, 
	                                                 DISPPARAMS __RPC_FAR *pDispParams, 
	                                                 VARIANT __RPC_FAR *pVarResult, 
	                                                 EXCEPINFO __RPC_FAR *pExcepInfo, 
	                                                 UINT __RPC_FAR *puArgErr);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *ExampleExecute_) (DIAdem_ITOCHMHelper_Interface __RPC_FAR *This, 
	                                                         long exampleNo, 
	                                                         long exampleCommand, 
	                                                         long *value);

} DIAdem_ITOCHMHelper_VTable;

typedef interface tagDIAdem_ITOCHMHelper_Interface
{
	CONST_VTBL DIAdem_ITOCHMHelper_VTable __RPC_FAR *lpVtbl;
} DIAdem_ITOCHMHelper_Interface;

typedef interface tagDIAdem_ITOCmd_Interface DIAdem_ITOCmd_Interface;

typedef struct tagDIAdem_ITOCmd_VTable
{
	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( DIAdem_ITOCmd_Interface __RPC_FAR * This, 
	                                                         REFIID riid, 
	                                                         void __RPC_FAR *__RPC_FAR *ppvObject);

	ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( DIAdem_ITOCmd_Interface __RPC_FAR * This);

	ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( DIAdem_ITOCmd_Interface __RPC_FAR * This);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( DIAdem_ITOCmd_Interface __RPC_FAR * This, 
	                                                           UINT __RPC_FAR *pctinfo);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( DIAdem_ITOCmd_Interface __RPC_FAR * This, 
	                                                      UINT iTInfo, 
	                                                      LCID lcid, 
	                                                      ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( DIAdem_ITOCmd_Interface __RPC_FAR * This, 
	                                                        REFIID riid, 
	                                                        LPOLESTR __RPC_FAR *rgszNames, 
	                                                        UINT cNames, 
	                                                        LCID lcid, 
	                                                        DISPID __RPC_FAR *rgDispId);

	HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( DIAdem_ITOCmd_Interface __RPC_FAR * This, 
	                                                 DISPID dispIdMember, 
	                                                 REFIID riid, 
	                                                 LCID lcid, 
	                                                 WORD wFlags, 
	                                                 DISPPARAMS __RPC_FAR *pDispParams, 
	                                                 VARIANT __RPC_FAR *pVarResult, 
	                                                 EXCEPINFO __RPC_FAR *pExcepInfo, 
	                                                 UINT __RPC_FAR *puArgErr);

} DIAdem_ITOCmd_VTable;

typedef interface tagDIAdem_ITOCmd_Interface
{
	CONST_VTBL DIAdem_ITOCmd_VTable __RPC_FAR *lpVtbl;
} DIAdem_ITOCmd_Interface;

const IID DIAdem_IID_ITOCommand =
	{
		0x285E4FB1, 0xF633, 0x11D1, 0x85, 0xDC, 0x0, 0x80, 0x48, 0xD9, 0xA4, 0x8
	};

const IID DIAdem_IID_ITODataSheet =
	{
		0x73E4BA22, 0x17F1, 0x11D2, 0x86, 0x1, 0x0, 0x80, 0x48, 0xD9, 0xA4, 0x8
	};

const IID DIAdem_IID_ITOCHMHelper =
	{
		0x7C60A880, 0x24FE, 0x4271, 0xBF, 0x22, 0xD4, 0x15, 0x5E, 0x7B, 0xB6, 0x91
	};

const IID DIAdem_IID_ITOCmd =
	{
		0xB3F446DA, 0xBC42, 0x49AC, 0x93, 0xC7, 0xDF, 0x7D, 0x4F, 0x6E, 0xA2, 0x47
	};

HRESULT CVIFUNC DIAdem_NewITOCommand (const char *server,
                                      int supportMultithreading, LCID locale,
                                      int reserved, CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0x285E4FB2, 0xF633, 0x11D1, 0x85, 0xDC, 0x0, 0x80, 0x48,
	              0xD9, 0xA4, 0x8};

	__result = CA_CreateObjectByClassIdEx (&clsid, server,
	                                       &DIAdem_IID_ITOCommand,
	                                       supportMultithreading, locale,
	                                       reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_OpenITOCommand (const char *fileName, const char *server,
                                       int supportMultithreading, LCID locale,
                                       int reserved, CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0x285E4FB2, 0xF633, 0x11D1, 0x85, 0xDC, 0x0, 0x80, 0x48,
	              0xD9, 0xA4, 0x8};

	__result = CA_LoadObjectFromFileByClassIdEx (fileName, &clsid, server,
	                                             &DIAdem_IID_ITOCommand,
	                                             supportMultithreading, locale,
	                                             reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_ActiveITOCommand (const char *server,
                                         int supportMultithreading, LCID locale,
                                         int reserved, CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0x285E4FB2, 0xF633, 0x11D1, 0x85, 0xDC, 0x0, 0x80, 0x48,
	              0xD9, 0xA4, 0x8};

	__result = CA_GetActiveObjectByClassIdEx (&clsid, server,
	                                          &DIAdem_IID_ITOCommand,
	                                          supportMultithreading, locale,
	                                          reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandCmdExecuteSync (CAObjHandle objectHandle,
                                                 ERRORINFO *errorInfo,
                                                 VARIANT vCmdV, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->CmdExecuteSync_ (__vtblIFacePtr, vCmdV,
	                                                     value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandTextVarGet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             const char *sgVarNameV,
                                             VARIANT *vValueP, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgVarNameV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgVarNameV, &sgVarNameV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->TextVarGet_ (__vtblIFacePtr,
	                                                 sgVarNameV__AutoType,
	                                                 vValueP, value));

Error:
	CA_FreeBSTR (sgVarNameV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vValueP);
		CA_VariantSetEmpty (vValueP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandDoubleVarGet (CAObjHandle objectHandle,
                                               ERRORINFO *errorInfo,
                                               const char *sgVarNameV,
                                               VARIANT *vValueP, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgVarNameV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgVarNameV, &sgVarNameV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->DoubleVarGet_ (__vtblIFacePtr,
	                                                   sgVarNameV__AutoType,
	                                                   vValueP, value));

Error:
	CA_FreeBSTR (sgVarNameV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vValueP);
		CA_VariantSetEmpty (vValueP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandIntegerVarGet (CAObjHandle objectHandle,
                                                ERRORINFO *errorInfo,
                                                const char *sgVarNameV,
                                                VARIANT *vValueP, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgVarNameV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgVarNameV, &sgVarNameV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->IntegerVarGet_ (__vtblIFacePtr,
	                                                    sgVarNameV__AutoType,
	                                                    vValueP, value));

Error:
	CA_FreeBSTR (sgVarNameV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vValueP);
		CA_VariantSetEmpty (vValueP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandTextVarSet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             const char *sgVarNameV,
                                             const char *sgValueV, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgVarNameV__AutoType = 0;
	BSTR sgValueV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgVarNameV, &sgVarNameV__AutoType));
	__caErrChk (CA_CStringToBSTR (sgValueV, &sgValueV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->TextVarSet_ (__vtblIFacePtr,
	                                                 sgVarNameV__AutoType,
	                                                 sgValueV__AutoType, value));

Error:
	CA_FreeBSTR (sgVarNameV__AutoType);
	CA_FreeBSTR (sgValueV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandDoubleVarSet (CAObjHandle objectHandle,
                                               ERRORINFO *errorInfo,
                                               const char *sgVarNameV,
                                               VARIANT vValueV, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgVarNameV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgVarNameV, &sgVarNameV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->DoubleVarSet_ (__vtblIFacePtr,
	                                                   sgVarNameV__AutoType,
	                                                   vValueV, value));

Error:
	CA_FreeBSTR (sgVarNameV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandIntegerVarSet (CAObjHandle objectHandle,
                                                ERRORINFO *errorInfo,
                                                const char *sgVarNameV,
                                                VARIANT vValueV, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgVarNameV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgVarNameV, &sgVarNameV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->IntegerVarSet_ (__vtblIFacePtr,
	                                                    sgVarNameV__AutoType,
	                                                    vValueV, value));

Error:
	CA_FreeBSTR (sgVarNameV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandCmdExecuteAsync (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  VARIANT vCmdV, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->CmdExecuteAsync_ (__vtblIFacePtr,
	                                                      vCmdV, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandCmdAbort (CAObjHandle objectHandle,
                                           ERRORINFO *errorInfo, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->CmdAbort_ (__vtblIFacePtr, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoMsgDisplay (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoMsgDisplay_ (__vtblIFacePtr,
	                                                       value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoMsgDisplay (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VBOOL value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoMsgDisplay_ (__vtblIFacePtr,
	                                                       value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoErrorDisplay (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoErrorDisplay_ (__vtblIFacePtr,
	                                                         value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoErrorDisplay (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     VBOOL value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoErrorDisplay_ (__vtblIFacePtr,
	                                                         value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoInfoDisplay (CAObjHandle objectHandle,
                                                    ERRORINFO *errorInfo,
                                                    VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoInfoDisplay_ (__vtblIFacePtr,
	                                                        value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoInfoDisplay (CAObjHandle objectHandle,
                                                    ERRORINFO *errorInfo,
                                                    VBOOL value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoInfoDisplay_ (__vtblIFacePtr,
	                                                        value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoWarningDisplay (CAObjHandle objectHandle,
                                                       ERRORINFO *errorInfo,
                                                       VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoWarningDisplay_ (__vtblIFacePtr,
	                                                           value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoWarningDisplay (CAObjHandle objectHandle,
                                                       ERRORINFO *errorInfo,
                                                       VBOOL value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoWarningDisplay_ (__vtblIFacePtr,
	                                                           value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoDialogDisplay (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoDialogDisplay_ (__vtblIFacePtr,
	                                                          value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoDialogDisplay (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoDialogDisplay_ (__vtblIFacePtr,
	                                                          value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoActivityDisplay (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoActivityDisplay_ (__vtblIFacePtr,
	                                                            value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoActivityDisplay (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoActivityDisplay_ (__vtblIFacePtr,
	                                                            value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandNoValueGet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             VARIANT *vNoValueP, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->NoValueGet_ (__vtblIFacePtr, vNoValueP,
	                                                 value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vNoValueP);
		CA_VariantSetEmpty (vNoValueP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandNoValueSet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             VARIANT vNoValueV, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->NoValueSet_ (__vtblIFacePtr, vNoValueV,
	                                                 value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandBoolVarGet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             const char *sgVarNameV,
                                             VARIANT *vValueP, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgVarNameV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgVarNameV, &sgVarNameV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->BoolVarGet_ (__vtblIFacePtr,
	                                                 sgVarNameV__AutoType,
	                                                 vValueP, value));

Error:
	CA_FreeBSTR (sgVarNameV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vValueP);
		CA_VariantSetEmpty (vValueP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandBoolVarSet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             const char *sgVarNameV,
                                             VARIANT vValueV, long *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgVarNameV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgVarNameV, &sgVarNameV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->BoolVarSet_ (__vtblIFacePtr,
	                                                 sgVarNameV__AutoType,
	                                                 vValueV, value));

Error:
	CA_FreeBSTR (sgVarNameV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandGetbInterfaceLocked (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbInterfaceLocked_ (__vtblIFacePtr,
	                                                          value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCommandSetbInterfaceLocked (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL value)
{
	HRESULT __result;
	DIAdem_ITOCommand_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCommand, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbInterfaceLocked_ (__vtblIFacePtr,
	                                                          value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCommand, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_NewITODataSheet (const char *server,
                                        int supportMultithreading, LCID locale,
                                        int reserved, CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0x73E4BA25, 0x17F1, 0x11D2, 0x86, 0x1, 0x0, 0x80, 0x48, 0xD9,
	              0xA4, 0x8};

	__result = CA_CreateObjectByClassIdEx (&clsid, server,
	                                       &DIAdem_IID_ITODataSheet,
	                                       supportMultithreading, locale,
	                                       reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_OpenITODataSheet (const char *fileName,
                                         const char *server,
                                         int supportMultithreading, LCID locale,
                                         int reserved, CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0x73E4BA25, 0x17F1, 0x11D2, 0x86, 0x1, 0x0, 0x80, 0x48, 0xD9,
	              0xA4, 0x8};

	__result = CA_LoadObjectFromFileByClassIdEx (fileName, &clsid, server,
	                                             &DIAdem_IID_ITODataSheet,
	                                             supportMultithreading, locale,
	                                             reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_ActiveITODataSheet (const char *server,
                                           int supportMultithreading,
                                           LCID locale, int reserved,
                                           CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0x73E4BA25, 0x17F1, 0x11D2, 0x86, 0x1, 0x0, 0x80, 0x48, 0xD9,
	              0xA4, 0x8};

	__result = CA_GetActiveObjectByClassIdEx (&clsid, server,
	                                          &DIAdem_IID_ITODataSheet,
	                                          supportMultithreading, locale,
	                                          reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnValSet (CAObjHandle objectHandle,
                                              ERRORINFO *errorInfo, long nRowV,
                                              VARIANT vChnV, VARIANT vValueV,
                                              long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnValSet_ (__vtblIFacePtr, nRowV,
	                                                vChnV, vValueV, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnValGet (CAObjHandle objectHandle,
                                              ERRORINFO *errorInfo, long nRowV,
                                              VARIANT vChnV, VARIANT *vValueP,
                                              long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnValGet_ (__vtblIFacePtr, nRowV,
	                                                vChnV, vValueP, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vValueP);
		CA_VariantSetEmpty (vValueP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetValueRangeSet (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  long nStartRowV,
                                                  VARIANT vStartChnV,
                                                  long nEndRowV,
                                                  VARIANT vEndChnV,
                                                  VARIANT vValueV, long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ValueRangeSet_ (__vtblIFacePtr,
	                                                    nStartRowV, vStartChnV,
	                                                    nEndRowV, vEndChnV,
	                                                    vValueV, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetValueRangeGet (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  long nStartRowV,
                                                  VARIANT vStartChnV,
                                                  long nEndRowV,
                                                  VARIANT vEndChnV,
                                                  VARIANT *vValueP, long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ValueRangeGet_ (__vtblIFacePtr,
	                                                    nStartRowV, vStartChnV,
	                                                    nEndRowV, vEndChnV,
	                                                    vValueP, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vValueP);
		CA_VariantSetEmpty (vValueP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnNameGet (CAObjHandle objectHandle,
                                               ERRORINFO *errorInfo,
                                               VARIANT vChnV, VARIANT *vNameP,
                                               long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnNameGet_ (__vtblIFacePtr, vChnV,
	                                                 vNameP, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vNameP);
		CA_VariantSetEmpty (vNameP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnNameSet (CAObjHandle objectHandle,
                                               ERRORINFO *errorInfo,
                                               VARIANT vChnV,
                                               const char *sgNameV, long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgNameV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgNameV, &sgNameV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnNameSet_ (__vtblIFacePtr, vChnV,
	                                                 sgNameV__AutoType, value));

Error:
	CA_FreeBSTR (sgNameV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnLengthGet (CAObjHandle objectHandle,
                                                 ERRORINFO *errorInfo,
                                                 VARIANT vChnV,
                                                 VARIANT *vLengthP, long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnLengthGet_ (__vtblIFacePtr, vChnV,
	                                                   vLengthP, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vLengthP);
		CA_VariantSetEmpty (vLengthP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnLengthSet (CAObjHandle objectHandle,
                                                 ERRORINFO *errorInfo,
                                                 VARIANT vChnV, long nLengthV,
                                                 long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnLengthSet_ (__vtblIFacePtr, vChnV,
	                                                   nLengthV, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnCommentGet (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  VARIANT vChnV,
                                                  VARIANT *vCommentP,
                                                  long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnCommentGet_ (__vtblIFacePtr, vChnV,
	                                                    vCommentP, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vCommentP);
		CA_VariantSetEmpty (vCommentP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnCommentSet (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  VARIANT vChnV,
                                                  const char *sgCommentV,
                                                  long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgCommentV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgCommentV, &sgCommentV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnCommentSet_ (__vtblIFacePtr, vChnV,
	                                                    sgCommentV__AutoType,
	                                                    value));

Error:
	CA_FreeBSTR (sgCommentV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnDimGet (CAObjHandle objectHandle,
                                              ERRORINFO *errorInfo,
                                              VARIANT vChnV,
                                              VARIANT *vDimensionP, long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnDimGet_ (__vtblIFacePtr, vChnV,
	                                                vDimensionP, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vDimensionP);
		CA_VariantSetEmpty (vDimensionP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnDimSet (CAObjHandle objectHandle,
                                              ERRORINFO *errorInfo,
                                              VARIANT vChnV,
                                              const char *sgDimensionV,
                                              long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR sgDimensionV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (sgDimensionV, &sgDimensionV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnDimSet_ (__vtblIFacePtr, vChnV,
	                                                sgDimensionV__AutoType,
	                                                value));

Error:
	CA_FreeBSTR (sgDimensionV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetMaxChnLengthGet (CAObjHandle objectHandle,
                                                    ERRORINFO *errorInfo,
                                                    VARIANT vChnV,
                                                    VARIANT *vMaxLengthP,
                                                    long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->MaxChnLengthGet_ (__vtblIFacePtr,
	                                                      vChnV, vMaxLengthP,
	                                                      value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vMaxLengthP);
		CA_VariantSetEmpty (vMaxLengthP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetMaxChnCountGet (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VARIANT *vCountV, long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->MaxChnCountGet_ (__vtblIFacePtr,
	                                                     vCountV, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vCountV);
		CA_VariantSetEmpty (vCountV);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnParamsUpdate (CAObjHandle objectHandle,
                                                    ERRORINFO *errorInfo,
                                                    VARIANT vStartChnV,
                                                    VARIANT vEndChnV,
                                                    long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnParamsUpdate_ (__vtblIFacePtr,
	                                                      vStartChnV, vEndChnV,
	                                                      value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetUpdateParamsLock (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     long nStateV, long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->UpdateParamsLock_ (__vtblIFacePtr,
	                                                       nStateV, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoMsgDisplay (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoMsgDisplay_ (__vtblIFacePtr,
	                                                       value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoMsgDisplay (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     VBOOL value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoMsgDisplay_ (__vtblIFacePtr,
	                                                       value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoErrorDisplay (CAObjHandle objectHandle,
                                                       ERRORINFO *errorInfo,
                                                       VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoErrorDisplay_ (__vtblIFacePtr,
	                                                         value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoErrorDisplay (CAObjHandle objectHandle,
                                                       ERRORINFO *errorInfo,
                                                       VBOOL value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoErrorDisplay_ (__vtblIFacePtr,
	                                                         value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoInfoDisplay (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoInfoDisplay_ (__vtblIFacePtr,
	                                                        value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoInfoDisplay (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoInfoDisplay_ (__vtblIFacePtr,
	                                                        value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoWarningDisplay (CAObjHandle objectHandle,
                                                         ERRORINFO *errorInfo,
                                                         VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoWarningDisplay_ (__vtblIFacePtr,
	                                                           value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoWarningDisplay (CAObjHandle objectHandle,
                                                         ERRORINFO *errorInfo,
                                                         VBOOL value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoWarningDisplay_ (__vtblIFacePtr,
	                                                           value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoDialogDisplay (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoDialogDisplay_ (__vtblIFacePtr,
	                                                          value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoDialogDisplay (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoDialogDisplay_ (__vtblIFacePtr,
	                                                          value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoActivityDisplay (CAObjHandle objectHandle,
                                                          ERRORINFO *errorInfo,
                                                          VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbNoActivityDisplay_ (__vtblIFacePtr,
	                                                            value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoActivityDisplay (CAObjHandle objectHandle,
                                                          ERRORINFO *errorInfo,
                                                          VBOOL value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbNoActivityDisplay_ (__vtblIFacePtr,
	                                                            value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetValueRangeFormatedSet (CAObjHandle objectHandle,
                                                          ERRORINFO *errorInfo,
                                                          long nStartRowV,
                                                          VARIANT vStartChnV,
                                                          long nEndRowV,
                                                          VARIANT vEndChnV,
                                                          VARIANT vValueV,
                                                          long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ValueRangeFormatedSet_ (__vtblIFacePtr,
	                                                            nStartRowV,
	                                                            vStartChnV,
	                                                            nEndRowV,
	                                                            vEndChnV,
	                                                            vValueV, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetValueRangeFormatedGet (CAObjHandle objectHandle,
                                                          ERRORINFO *errorInfo,
                                                          long nStartRowV,
                                                          VARIANT vStartChnV,
                                                          long nEndRowV,
                                                          VARIANT vEndChnV,
                                                          VARIANT *vValueP,
                                                          long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ValueRangeFormatedGet_ (__vtblIFacePtr,
	                                                            nStartRowV,
	                                                            vStartChnV,
	                                                            nEndRowV,
	                                                            vEndChnV,
	                                                            vValueP, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vValueP);
		CA_VariantSetEmpty (vValueP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnDataTypeGet (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VARIANT vChnV,
                                                   VARIANT *vDataTypeP,
                                                   long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnDataTypeGet_ (__vtblIFacePtr, vChnV,
	                                                     vDataTypeP, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	if (FAILED(__result))
		{
		CA_VariantClear (vDataTypeP);
		CA_VariantSetEmpty (vDataTypeP);
		}
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetChnDataTypeSet (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VARIANT vChnV,
                                                   const char *dataTypeV,
                                                   long *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;
	BSTR dataTypeV__AutoType = 0;

	__caErrChk (CA_CStringToBSTR (dataTypeV, &dataTypeV__AutoType));

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ChnDataTypeSet_ (__vtblIFacePtr, vChnV,
	                                                     dataTypeV__AutoType,
	                                                     value));

Error:
	CA_FreeBSTR (dataTypeV__AutoType);
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetGetbInterfaceLocked (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL *value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->GetbInterfaceLocked_ (__vtblIFacePtr,
	                                                          value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_ITODataSheetSetbInterfaceLocked (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL value)
{
	HRESULT __result;
	DIAdem_ITODataSheet_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITODataSheet, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->SetbInterfaceLocked_ (__vtblIFacePtr,
	                                                          value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITODataSheet, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_NewITOCHMHelper (const char *server,
                                        int supportMultithreading, LCID locale,
                                        int reserved, CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0xFB888185, 0xCEA2, 0x4B6B, 0xAF, 0x61, 0x5F, 0xD3, 0x2,
	              0x71, 0x7E, 0x37};

	__result = CA_CreateObjectByClassIdEx (&clsid, server,
	                                       &DIAdem_IID_ITOCHMHelper,
	                                       supportMultithreading, locale,
	                                       reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_OpenITOCHMHelper (const char *fileName,
                                         const char *server,
                                         int supportMultithreading, LCID locale,
                                         int reserved, CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0xFB888185, 0xCEA2, 0x4B6B, 0xAF, 0x61, 0x5F, 0xD3, 0x2,
	              0x71, 0x7E, 0x37};

	__result = CA_LoadObjectFromFileByClassIdEx (fileName, &clsid, server,
	                                             &DIAdem_IID_ITOCHMHelper,
	                                             supportMultithreading, locale,
	                                             reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_ActiveITOCHMHelper (const char *server,
                                           int supportMultithreading,
                                           LCID locale, int reserved,
                                           CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0xFB888185, 0xCEA2, 0x4B6B, 0xAF, 0x61, 0x5F, 0xD3, 0x2,
	              0x71, 0x7E, 0x37};

	__result = CA_GetActiveObjectByClassIdEx (&clsid, server,
	                                          &DIAdem_IID_ITOCHMHelper,
	                                          supportMultithreading, locale,
	                                          reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_ITOCHMHelperExampleExecute (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   long exampleNo,
                                                   long exampleCommand,
                                                   long *value)
{
	HRESULT __result;
	DIAdem_ITOCHMHelper_Interface * __vtblIFacePtr = 0;
	int __didAddRef;
	int __errorInfoPresent = 0;

	__caErrChk (CA_GetInterfaceFromObjHandle (objectHandle,
	                                          &DIAdem_IID_ITOCHMHelper, 0,
	                                          &__vtblIFacePtr, &__didAddRef));
	__caErrChk (__vtblIFacePtr->lpVtbl->ExampleExecute_ (__vtblIFacePtr,
	                                                     exampleNo,
	                                                     exampleCommand, value));

Error:
	if (__vtblIFacePtr && __didAddRef)
		__vtblIFacePtr->lpVtbl->Release (__vtblIFacePtr);
	CA_FillErrorInfoEx (objectHandle, &DIAdem_IID_ITOCHMHelper, __result,
	                    errorInfo, &__errorInfoPresent);
	if (__errorInfoPresent)
		__result = DISP_E_EXCEPTION;
	return __result;
}

HRESULT CVIFUNC DIAdem_NewTOCMD910ITOCmd (const char *server,
                                          int supportMultithreading, LCID locale,
                                          int reserved,
                                          CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0xB96EBA72, 0xCDC1, 0x41A7, 0x9A, 0xC6, 0xD9, 0x47, 0x7D,
	              0x3D, 0xFA, 0x1C};

	__result = CA_CreateObjectByClassIdEx (&clsid, server, &DIAdem_IID_ITOCmd,
	                                       supportMultithreading, locale,
	                                       reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_OpenTOCMD910ITOCmd (const char *fileName,
                                           const char *server,
                                           int supportMultithreading,
                                           LCID locale, int reserved,
                                           CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0xB96EBA72, 0xCDC1, 0x41A7, 0x9A, 0xC6, 0xD9, 0x47, 0x7D,
	              0x3D, 0xFA, 0x1C};

	__result = CA_LoadObjectFromFileByClassIdEx (fileName, &clsid, server,
	                                             &DIAdem_IID_ITOCmd,
	                                             supportMultithreading, locale,
	                                             reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_ActiveTOCMD910ITOCmd (const char *server,
                                             int supportMultithreading,
                                             LCID locale, int reserved,
                                             CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0xB96EBA72, 0xCDC1, 0x41A7, 0x9A, 0xC6, 0xD9, 0x47, 0x7D,
	              0x3D, 0xFA, 0x1C};

	__result = CA_GetActiveObjectByClassIdEx (&clsid, server,
	                                          &DIAdem_IID_ITOCmd,
	                                          supportMultithreading, locale,
	                                          reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_NewTOCmdITOCmd (const char *server,
                                       int supportMultithreading, LCID locale,
                                       int reserved, CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0x5A319EC5, 0x40B6, 0x4F7A, 0xA6, 0x14, 0x2C, 0x70, 0xA3,
	              0xCD, 0x62, 0xCB};

	__result = CA_CreateObjectByClassIdEx (&clsid, server, &DIAdem_IID_ITOCmd,
	                                       supportMultithreading, locale,
	                                       reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_OpenTOCmdITOCmd (const char *fileName, const char *server,
                                        int supportMultithreading, LCID locale,
                                        int reserved, CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0x5A319EC5, 0x40B6, 0x4F7A, 0xA6, 0x14, 0x2C, 0x70, 0xA3,
	              0xCD, 0x62, 0xCB};

	__result = CA_LoadObjectFromFileByClassIdEx (fileName, &clsid, server,
	                                             &DIAdem_IID_ITOCmd,
	                                             supportMultithreading, locale,
	                                             reserved, objectHandle);

	return __result;
}

HRESULT CVIFUNC DIAdem_ActiveTOCmdITOCmd (const char *server,
                                          int supportMultithreading, LCID locale,
                                          int reserved,
                                          CAObjHandle *objectHandle)
{
	HRESULT __result;
	GUID clsid = {0x5A319EC5, 0x40B6, 0x4F7A, 0xA6, 0x14, 0x2C, 0x70, 0xA3,
	              0xCD, 0x62, 0xCB};

	__result = CA_GetActiveObjectByClassIdEx (&clsid, server,
	                                          &DIAdem_IID_ITOCmd,
	                                          supportMultithreading, locale,
	                                          reserved, objectHandle);

	return __result;
}
