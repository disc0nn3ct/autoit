#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>

Local $hGui, $msg, $Input1, $Input2, $Input3, $Input4, $BtnOk, $sText

$hGui = GUICreate("GUI с поддержкой drag and drop", 380, 160, @DesktopWidth / 2 - 190, @DesktopHeight / 2 - 80, -1, $WS_EX_ACCEPTFILES)
$Input1 = GUICtrlCreateInput('', 10, 5, 360, 20) ; принимает перетаскиваемые в Input файлы (drag and drop)
GUICtrlSetState(-1, $GUI_DROPACCEPTED)
$Input2 = GUICtrlCreateInput('', 10, 35, 360, 20, -1, $WS_EX_STATICEDGE) ; Стиль трёх-мерный
$Input3 = GUICtrlCreateInput('', 10, 65, 360, 22, -1, $WS_EX_DLGMODALFRAME) ; выпуклый
$Input4 = GUICtrlCreateInput('', 10, 95, 360, 22, $WS_BORDER)
$BtnOk = GUICtrlCreateButton("OK", (380 - 70) / 2, 127, 70, 26)

GUISetState()

While 1
    $msg = GUIGetMsg()
    Switch $msg
        Case $GUI_EVENT_CLOSE
            ExitLoop
        Case $BtnOk
            $sText = ''
            $sText &= 'Input1 = ' & GUICtrlRead($Input1) & @CRLF
            $sText &= 'Input2 = ' & GUICtrlRead($Input2) & @CRLF
            $sText &= 'Input3 = ' & GUICtrlRead($Input3) & @CRLF
            $sText &= 'Input4 = ' & GUICtrlRead($Input4) & @CRLF
            MsgBox(0, "Результат", $sText, 0, $hGui)
    EndSwitch
WEnd