   #cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         c0nn3ct

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

$ChooseType = GUICreate("Choose Type", 240, 293, -1, -1)
GUISetBkColor(0xFFFFFF)
GuiSetIcon("icon.ico")
GuiCtrlCreatePic("Charles_Wheatstone.jpg",128, 48, 92, 113)
$Button1 = GUICtrlCreateButton("on top, on rt", 24, 96, 96, 41, $WS_GROUP)
$Label2 = GUICtrlCreateLabel("If on one vertical make replacement", 24, 48, 92, 41)
$first = GUICtrlCreateLabel(" Choose settings for cipher Playfer", 32, 16, 180, 17)
$Button2 = GUICtrlCreateButton("on bot, on rt", 24, 144, 96, 41, $WS_GROUP)
$f5x5 = GUICtrlCreateRadio("5x5",  152, 176, 57, 25)
GUICtrlSetState(-1, $GUI_CHECKED)
$Button3 = GUICtrlCreateButton("on top, on lft", 24, 192, 97, 41, $WS_GROUP)
$Button4 = GUICtrlCreateButton("on bot, on lft", 24, 240, 97, 41, $WS_GROUP)
;$f5x6 = GUICtrlCreateRadio("5x6", 152, 200, 65, 25)
$size = GUICtrlCreateLabel("size:",  152, 161, 22, 17)
GUISetState(@SW_SHOW)

Func bot()
Run('onbot5x5.exe')
EndFunc

Func top()
Run('ontop5x5.exe')
EndFunc

Func botlft()
Run('onbolft5x5.exe')
EndFunc

Func toplft()
Run('ontop5x5lft.exe')
EndFunc


While 1
$nMsg = GUIGetMsg()
   Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit

	  Case $first

	  Case $Button1
	  top()

	  Case $Button2
	  bot()
	  Case $Button3
	  botlft()
	  Case $Button4
	  toplft()
   EndSwitch
WEnd
