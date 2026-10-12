#ifndef _DIADEM_H
#define _DIADEM_H

#if defined(INCLUDE_AFTER_WINDOWS_H) && !defined(_INC_WINDOWS)
#error  This header must be included before utility.h and formatio.h
#error  because it includes cviauto.h which includes Windows SDK headers.
#endif /* INCLUDE_AFTER_WINDOWS_H */

#include <cviauto.h>

#ifdef __cplusplus
    extern "C" {
#endif
extern const IID DIAdem_IID_ITOCommand;

extern const IID DIAdem_IID_ITODataSheet;
extern const IID DIAdem_IID_ITOCHMHelper;
extern const IID DIAdem_IID_ITOCmd;

HRESULT CVIFUNC DIAdem_NewITOCommand (const char *server,
                                      int supportMultithreading, LCID locale,
                                      int reserved, CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_OpenITOCommand (const char *fileName, const char *server,
                                       int supportMultithreading, LCID locale,
                                       int reserved, CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_ActiveITOCommand (const char *server,
                                         int supportMultithreading, LCID locale,
                                         int reserved, CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_ITOCommandCmdExecuteSync (CAObjHandle objectHandle,
                                                 ERRORINFO *errorInfo,
                                                 VARIANT vCmdV, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandTextVarGet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             const char *sgVarNameV,
                                             VARIANT *vValueP, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandDoubleVarGet (CAObjHandle objectHandle,
                                               ERRORINFO *errorInfo,
                                               const char *sgVarNameV,
                                               VARIANT *vValueP, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandIntegerVarGet (CAObjHandle objectHandle,
                                                ERRORINFO *errorInfo,
                                                const char *sgVarNameV,
                                                VARIANT *vValueP, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandTextVarSet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             const char *sgVarNameV,
                                             const char *sgValueV, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandDoubleVarSet (CAObjHandle objectHandle,
                                               ERRORINFO *errorInfo,
                                               const char *sgVarNameV,
                                               VARIANT vValueV, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandIntegerVarSet (CAObjHandle objectHandle,
                                                ERRORINFO *errorInfo,
                                                const char *sgVarNameV,
                                                VARIANT vValueV, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandCmdExecuteAsync (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  VARIANT vCmdV, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandCmdAbort (CAObjHandle objectHandle,
                                           ERRORINFO *errorInfo, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoMsgDisplay (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VBOOL *value);

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoMsgDisplay (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VBOOL value);

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoErrorDisplay (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     VBOOL *value);

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoErrorDisplay (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     VBOOL value);

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoInfoDisplay (CAObjHandle objectHandle,
                                                    ERRORINFO *errorInfo,
                                                    VBOOL *value);

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoInfoDisplay (CAObjHandle objectHandle,
                                                    ERRORINFO *errorInfo,
                                                    VBOOL value);

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoWarningDisplay (CAObjHandle objectHandle,
                                                       ERRORINFO *errorInfo,
                                                       VBOOL *value);

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoWarningDisplay (CAObjHandle objectHandle,
                                                       ERRORINFO *errorInfo,
                                                       VBOOL value);

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoDialogDisplay (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL *value);

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoDialogDisplay (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL value);

HRESULT CVIFUNC DIAdem_ITOCommandGetbNoActivityDisplay (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL *value);

HRESULT CVIFUNC DIAdem_ITOCommandSetbNoActivityDisplay (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL value);

HRESULT CVIFUNC DIAdem_ITOCommandNoValueGet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             VARIANT *vNoValueP, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandNoValueSet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             VARIANT vNoValueV, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandBoolVarGet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             const char *sgVarNameV,
                                             VARIANT *vValueP, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandBoolVarSet (CAObjHandle objectHandle,
                                             ERRORINFO *errorInfo,
                                             const char *sgVarNameV,
                                             VARIANT vValueV, long *value);

HRESULT CVIFUNC DIAdem_ITOCommandGetbInterfaceLocked (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL *value);

HRESULT CVIFUNC DIAdem_ITOCommandSetbInterfaceLocked (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL value);

HRESULT CVIFUNC DIAdem_NewITODataSheet (const char *server,
                                        int supportMultithreading, LCID locale,
                                        int reserved, CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_OpenITODataSheet (const char *fileName,
                                         const char *server,
                                         int supportMultithreading, LCID locale,
                                         int reserved, CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_ActiveITODataSheet (const char *server,
                                           int supportMultithreading,
                                           LCID locale, int reserved,
                                           CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_ITODataSheetChnValSet (CAObjHandle objectHandle,
                                              ERRORINFO *errorInfo, long nRowV,
                                              VARIANT vChnV, VARIANT vValueV,
                                              long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnValGet (CAObjHandle objectHandle,
                                              ERRORINFO *errorInfo, long nRowV,
                                              VARIANT vChnV, VARIANT *vValueP,
                                              long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetValueRangeSet (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  long nStartRowV,
                                                  VARIANT vStartChnV,
                                                  long nEndRowV,
                                                  VARIANT vEndChnV,
                                                  VARIANT vValueV, long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetValueRangeGet (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  long nStartRowV,
                                                  VARIANT vStartChnV,
                                                  long nEndRowV,
                                                  VARIANT vEndChnV,
                                                  VARIANT *vValueP, long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnNameGet (CAObjHandle objectHandle,
                                               ERRORINFO *errorInfo,
                                               VARIANT vChnV, VARIANT *vNameP,
                                               long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnNameSet (CAObjHandle objectHandle,
                                               ERRORINFO *errorInfo,
                                               VARIANT vChnV,
                                               const char *sgNameV, long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnLengthGet (CAObjHandle objectHandle,
                                                 ERRORINFO *errorInfo,
                                                 VARIANT vChnV,
                                                 VARIANT *vLengthP, long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnLengthSet (CAObjHandle objectHandle,
                                                 ERRORINFO *errorInfo,
                                                 VARIANT vChnV, long nLengthV,
                                                 long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnCommentGet (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  VARIANT vChnV,
                                                  VARIANT *vCommentP,
                                                  long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnCommentSet (CAObjHandle objectHandle,
                                                  ERRORINFO *errorInfo,
                                                  VARIANT vChnV,
                                                  const char *sgCommentV,
                                                  long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnDimGet (CAObjHandle objectHandle,
                                              ERRORINFO *errorInfo,
                                              VARIANT vChnV,
                                              VARIANT *vDimensionP, long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnDimSet (CAObjHandle objectHandle,
                                              ERRORINFO *errorInfo,
                                              VARIANT vChnV,
                                              const char *sgDimensionV,
                                              long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetMaxChnLengthGet (CAObjHandle objectHandle,
                                                    ERRORINFO *errorInfo,
                                                    VARIANT vChnV,
                                                    VARIANT *vMaxLengthP,
                                                    long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetMaxChnCountGet (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VARIANT *vCountV, long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnParamsUpdate (CAObjHandle objectHandle,
                                                    ERRORINFO *errorInfo,
                                                    VARIANT vStartChnV,
                                                    VARIANT vEndChnV,
                                                    long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetUpdateParamsLock (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     long nStateV, long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoMsgDisplay (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     VBOOL *value);

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoMsgDisplay (CAObjHandle objectHandle,
                                                     ERRORINFO *errorInfo,
                                                     VBOOL value);

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoErrorDisplay (CAObjHandle objectHandle,
                                                       ERRORINFO *errorInfo,
                                                       VBOOL *value);

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoErrorDisplay (CAObjHandle objectHandle,
                                                       ERRORINFO *errorInfo,
                                                       VBOOL value);

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoInfoDisplay (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL *value);

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoInfoDisplay (CAObjHandle objectHandle,
                                                      ERRORINFO *errorInfo,
                                                      VBOOL value);

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoWarningDisplay (CAObjHandle objectHandle,
                                                         ERRORINFO *errorInfo,
                                                         VBOOL *value);

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoWarningDisplay (CAObjHandle objectHandle,
                                                         ERRORINFO *errorInfo,
                                                         VBOOL value);

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoDialogDisplay (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL *value);

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoDialogDisplay (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL value);

HRESULT CVIFUNC DIAdem_ITODataSheetGetbNoActivityDisplay (CAObjHandle objectHandle,
                                                          ERRORINFO *errorInfo,
                                                          VBOOL *value);

HRESULT CVIFUNC DIAdem_ITODataSheetSetbNoActivityDisplay (CAObjHandle objectHandle,
                                                          ERRORINFO *errorInfo,
                                                          VBOOL value);

HRESULT CVIFUNC DIAdem_ITODataSheetValueRangeFormatedSet (CAObjHandle objectHandle,
                                                          ERRORINFO *errorInfo,
                                                          long nStartRowV,
                                                          VARIANT vStartChnV,
                                                          long nEndRowV,
                                                          VARIANT vEndChnV,
                                                          VARIANT vValueV,
                                                          long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetValueRangeFormatedGet (CAObjHandle objectHandle,
                                                          ERRORINFO *errorInfo,
                                                          long nStartRowV,
                                                          VARIANT vStartChnV,
                                                          long nEndRowV,
                                                          VARIANT vEndChnV,
                                                          VARIANT *vValueP,
                                                          long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnDataTypeGet (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VARIANT vChnV,
                                                   VARIANT *vDataTypeP,
                                                   long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetChnDataTypeSet (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   VARIANT vChnV,
                                                   const char *dataTypeV,
                                                   long *value);

HRESULT CVIFUNC DIAdem_ITODataSheetGetbInterfaceLocked (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL *value);

HRESULT CVIFUNC DIAdem_ITODataSheetSetbInterfaceLocked (CAObjHandle objectHandle,
                                                        ERRORINFO *errorInfo,
                                                        VBOOL value);

HRESULT CVIFUNC DIAdem_NewITOCHMHelper (const char *server,
                                        int supportMultithreading, LCID locale,
                                        int reserved, CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_OpenITOCHMHelper (const char *fileName,
                                         const char *server,
                                         int supportMultithreading, LCID locale,
                                         int reserved, CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_ActiveITOCHMHelper (const char *server,
                                           int supportMultithreading,
                                           LCID locale, int reserved,
                                           CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_ITOCHMHelperExampleExecute (CAObjHandle objectHandle,
                                                   ERRORINFO *errorInfo,
                                                   long exampleNo,
                                                   long exampleCommand,
                                                   long *value);

HRESULT CVIFUNC DIAdem_NewTOCMD910ITOCmd (const char *server,
                                          int supportMultithreading, LCID locale,
                                          int reserved,
                                          CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_OpenTOCMD910ITOCmd (const char *fileName,
                                           const char *server,
                                           int supportMultithreading,
                                           LCID locale, int reserved,
                                           CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_ActiveTOCMD910ITOCmd (const char *server,
                                             int supportMultithreading,
                                             LCID locale, int reserved,
                                             CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_NewTOCmdITOCmd (const char *server,
                                       int supportMultithreading, LCID locale,
                                       int reserved, CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_OpenTOCmdITOCmd (const char *fileName, const char *server,
                                        int supportMultithreading, LCID locale,
                                        int reserved, CAObjHandle *objectHandle);

HRESULT CVIFUNC DIAdem_ActiveTOCmdITOCmd (const char *server,
                                          int supportMultithreading, LCID locale,
                                          int reserved,
                                          CAObjHandle *objectHandle);
#ifdef __cplusplus
    }
#endif
#endif /* _DIADEM_H */
