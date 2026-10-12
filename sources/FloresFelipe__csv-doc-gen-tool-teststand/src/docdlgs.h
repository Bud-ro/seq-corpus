/**************************************************************************/
/* LabWindows/CVI User Interface Resource (UIR) Include File              */
/*                                                                        */
/* WARNING: Do not add to, delete from, or otherwise modify the contents  */
/*          of this include file.                                         */
/**************************************************************************/

#include <userint.h>

#ifdef __cplusplus
    extern "C" {
#endif

     /* Panels and Controls: */

#define  DOC_CONFIG                       1       /* callback function: DocDialog_ConfigPanelCallback */
#define  DOC_CONFIG_SEQFILE_NAME          2       /* control type: string, callback function: (none) */
#define  DOC_CONFIG_FILE_FMT              3       /* control type: ring, callback function: DocDialog_FileFmtChange */
#define  DOC_CONFIG_DEST_FILE             4       /* control type: string, callback function: (none) */
#define  DOC_CONFIG_BROWSE_DEST_FILE      5       /* control type: pictButton, callback function: DocDialog_OnBrowseDestFile */
#define  DOC_CONFIG_PROPDISP_OPTS_LBL     6       /* control type: textMsg, callback function: (none) */
#define  DOC_CONFIG_SHOW_LOCALS           7       /* control type: radioButton, callback function: (none) */
#define  DOC_CONFIG_SHOW_PARAMS           8       /* control type: radioButton, callback function: (none) */
#define  DOC_CONFIG_SHOW_FILEGLOBALS      9       /* control type: radioButton, callback function: (none) */
#define  DOC_CONFIG_SHOW_GLOBALS          10      /* control type: radioButton, callback function: (none) */
#define  DOC_CONFIG_VALUE_DISP_OPT_LBL    11      /* control type: textMsg, callback function: (none) */
#define  DOC_CONFIG_SHOW_SUBPROPS         12      /* control type: radioButton, callback function: (none) */
#define  DOC_CONFIG_SHOW_HIDDEN           13      /* control type: radioButton, callback function: (none) */
#define  DOC_CONFIG_SHOW_ELEMS            14      /* control type: radioButton, callback function: DocDialog_OnShowElementsCheck */
#define  DOC_CONFIG_MAX_ELEMS             15      /* control type: numeric, callback function: (none) */
#define  DOC_CONFIG_LAUNCH_VIEWER         16      /* control type: radioButton, callback function: (none) */
#define  DOC_CONFIG_STATUS_MSG            17      /* control type: textMsg, callback function: (none) */
#define  DOC_CONFIG_PERCENT_DONE          18      /* control type: scale, callback function: (none) */
#define  DOC_CONFIG_TIMER                 19      /* control type: timer, callback function: DocDialog_PollDocExecutionState */
#define  DOC_CONFIG_OK_BTN                20      /* control type: command, callback function: DocDialog_OnOk */
#define  DOC_CONFIG_CANCEL_BTN            21      /* control type: command, callback function: DocDialog_OnCancel */
#define  DOC_CONFIG_HELP_BTN              22      /* control type: command, callback function: DocDialog_OnHelp */
#define  DOC_CONFIG_LOCKED_MSG            23      /* control type: textMsg, callback function: (none) */
#define  DOC_CONFIG_DECORATION_3          24      /* control type: deco, callback function: (none) */
#define  DOC_CONFIG_DECORATION_4          25      /* control type: deco, callback function: (none) */


     /* Control Arrays: */

          /* (no control arrays in the resource file) */


     /* Menu Bars, Menus, and Menu Items: */

          /* (no menu bars in the resource file) */


     /* Callback Prototypes: */

int  CVICALLBACK DocDialog_ConfigPanelCallback(int panel, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK DocDialog_FileFmtChange(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK DocDialog_OnBrowseDestFile(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK DocDialog_OnCancel(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK DocDialog_OnHelp(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK DocDialog_OnOk(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK DocDialog_OnShowElementsCheck(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);
int  CVICALLBACK DocDialog_PollDocExecutionState(int panel, int control, int event, void *callbackData, int eventData1, int eventData2);


#ifdef __cplusplus
    }
#endif
