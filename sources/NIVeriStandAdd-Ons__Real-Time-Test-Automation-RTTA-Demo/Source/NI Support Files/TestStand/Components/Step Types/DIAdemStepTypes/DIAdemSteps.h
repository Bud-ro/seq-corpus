/**************************************************************************/
/* LabWindows/CVI User Interface Resource (UIR) Include File              */
/* Copyright (c) National Instruments 2006. All Rights Reserved.          */
/*                                                                        */
/* WARNING: Do not add to, delete from, or otherwise modify the contents  */
/*          of this include file.                                         */
/**************************************************************************/

#include <userint.h>

#ifdef __cplusplus
    extern "C" {
#endif

     /* Panels and Controls: */

#define  CLOSEREF                        1
#define  CLOSEREF_OKBTN                  2       /* callback function: CloseOKCallback */
#define  CLOSEREF_CANCELBTN              3       /* callback function: CloseCancelCallback */
#define  CLOSEREF_HELPBTN                4
#define  CLOSEREF_DIADEMREFEXPR          5

#define  EXPORTCHN                       2
#define  EXPORTCHN_OKBTN                 2       /* callback function: ExportChnOKCallback */
#define  EXPORTCHN_CANCELBTN             3       /* callback function: ExportChnCancelCallback */
#define  EXPORTCHN_HELPBTN               4
#define  EXPORTCHN_DIADEMREFEXPR         5
#define  EXPORTCHN_FIRSTCHANNEL          6
#define  EXPORTCHN_NAMERADIO             7       /* callback function: ExportRadioCallback */
#define  EXPORTCHN_NUMBERRADIO           8       /* callback function: ExportRadioCallback */
#define  EXPORTCHN_DATASOURCE            9
#define  EXPORTCHN_CREATECHN             10

#define  IMPORTCHN                       3
#define  IMPORTCHN_OKBTN                 2       /* callback function: ImportChnOKCallback */
#define  IMPORTCHN_CANCELBTN             3       /* callback function: ImportChnCancelCallback */
#define  IMPORTCHN_HELPBTN               4
#define  IMPORTCHN_DIADEMREFEXPR         5
#define  IMPORTCHN_FIRSTCHANNEL          6
#define  IMPORTCHN_LASTCHANNEL           7
#define  IMPORTCHN_NAMERADIO             8       /* callback function: ImportRadioCallback */
#define  IMPORTCHN_NUMBERRADIO           9       /* callback function: ImportRadioCallback */
#define  IMPORTCHN_DATA                  10

#define  OPENREF                         4
#define  OPENREF_OKBTN                   2       /* callback function: OpenOKCallback */
#define  OPENREF_CANCELBTN               3       /* callback function: OpenCancelCallback */
#define  OPENREF_HELPBTN                 4
#define  OPENREF_DIADEMREFEXPR           5
#define  OPENREF_HOSTNAMEEXPR            6
#define  OPENREF_SHOWENVIRONMENT         7

#define  RUNSCRIPT                       5
#define  RUNSCRIPT_OKBTN                 2       /* callback function: RunScriptOKCallback */
#define  RUNSCRIPT_CANCELBTN             3       /* callback function: RunScriptCancelCallback */
#define  RUNSCRIPT_HELPBTN               4
#define  RUNSCRIPT_DIADEMREFEXPR         5
#define  RUNSCRIPT_PATH                  6
#define  RUNSCRIPT_RUNASYNC              7
#define  RUNSCRIPT_PATHBYEXPRCHK         8       /* callback function: ScriptPathByExprCallback */


     /* Menu Bars, Menus, and Menu Items: */

          /* (no menu bars in the resource file) */


     /* Callback Prototypes: */ 

int  CVICALLBACK CloseCancelCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK CloseOKCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK ExportChnCancelCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK ExportChnOKCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK ExportRadioCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK ImportChnCancelCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK ImportChnOKCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK ImportRadioCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK OpenCancelCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK OpenOKCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK RunScriptCancelCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK RunScriptOKCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK ScriptPathByExprCallback(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);


#ifdef __cplusplus
    }
#endif
