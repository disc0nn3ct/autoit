#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         c0nn3ct

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
Local $iEdit,$i1,$j1,$i2,$j2,$Edit1,$Edit2,$t1,$m1,$t2,$m2,$iEdit1,$Edit11,$Edit22

$Form1 = GUICreate("Form1", 362, 477, -1, -1)
GUISetBkColor(0xFFFFFF)
GuiSetIcon("icon.ico")
$Label1 = GUICtrlCreateLabel("Enter key and press ok", 40, 48, 276, 17)
;$Edit1 = GUICtrlCreateEdit("Im at ro ub le dm an Ch an ge db yt he th in gs Id ot He ya ll re me mb er yo u", 24, 216, 313, 89)
$Edit11 = GUICtrlCreateEdit("I like ramen", 24, 216, 313, 89)
;GUICtrlSetData(-1, "Im at ro ub le dm an Ch an ge db yt he th in gs Id ot He ya ll re me mb er yo u")
GUICtrlSetData(-1, "I like ramen")
$Edit22 = GUICtrlCreateEdit("", 24, 344, 313, 89)
GUICtrlSetData(-1, "Enter")
$Input1 = GUICtrlCreateInput("a", 40, 72, 49, 21)
$Input2 = GUICtrlCreateInput("f", 96, 72, 49, 21)
$Input3 = GUICtrlCreateInput("l", 152, 72, 49, 21)
$Input4 = GUICtrlCreateInput("q", 208, 72, 49, 21)
$Input5 = GUICtrlCreateInput("v", 264, 72, 49, 21)
$Input6 = GUICtrlCreateInput("b", 40, 96, 49, 21)
$Input7 = GUICtrlCreateInput("g", 96, 96, 49, 21)
$Input8 = GUICtrlCreateInput("m", 152, 96, 49, 21)
$Input9 = GUICtrlCreateInput("r", 208, 96, 49, 21)
$Input10 = GUICtrlCreateInput("w", 264, 96, 49, 21)
$Input11 = GUICtrlCreateInput("c", 40, 120, 49, 21)
$Input12 = GUICtrlCreateInput("h", 96, 120, 49, 21)
$Input13 = GUICtrlCreateInput("n", 152, 120, 49, 21)
$Input14 = GUICtrlCreateInput("s", 208, 120, 49, 21)
$Input15 = GUICtrlCreateInput("x", 264, 120, 49, 21)
$Input16 = GUICtrlCreateInput("d", 40, 144, 49, 21)
$Input17 = GUICtrlCreateInput("i", 96, 144, 49, 21)
$Input18 = GUICtrlCreateInput("o", 152, 144, 49, 21)
$Input19 = GUICtrlCreateInput("t", 208, 144, 49, 21)
$Input20 = GUICtrlCreateInput("y", 264, 144, 49, 21)
$Input21 = GUICtrlCreateInput("e", 40, 168, 49, 21)
$Input22 = GUICtrlCreateInput("k", 96, 168, 49, 21)
$Input23 = GUICtrlCreateInput("p", 152, 168, 49, 21)
$Input24 = GUICtrlCreateInput("u", 208, 168, 49, 21)
$Input25 = GUICtrlCreateInput("z", 264, 168, 49, 21)
$Encrypt = GUICtrlCreateButton("Encrypt", 288, 312, 57, 25, $WS_GROUP)
GUICtrlSetOnEvent(-1, 'Encrypt')
$Decrypt = GUICtrlCreateButton("Decrypt", 288, 440, 57, 25, $WS_GROUP)
GUICtrlSetOnEvent(-1, 'Decrypt')
GUISetState(@SW_SHOW)
Local $Array[5][5]

Func Encrypt()

$Array[0][0]=GUICtrlRead($Input1)
$Array[0][1]=GUICtrlRead($Input2)
$Array[0][2]=GUICtrlRead($Input3)
$Array[0][3]=GUICtrlRead($Input4)
$Array[0][4]=GUICtrlRead($Input5)
$Array[1][0]=GUICtrlRead($Input6)
$Array[1][1]=GUICtrlRead($Input7)
$Array[1][2]=GUICtrlRead($Input8)
$Array[1][3]=GUICtrlRead($Input9)
$Array[1][4]=GUICtrlRead($Input10)
$Array[2][0]=GUICtrlRead($Input11)
$Array[2][1]=GUICtrlRead($Input12)
$Array[2][2]=GUICtrlRead($Input13)
$Array[2][3]=GUICtrlRead($Input14)
$Array[2][4]=GUICtrlRead($Input15)
$Array[3][0]=GUICtrlRead($Input16)
$Array[3][1]=GUICtrlRead($Input17)
$Array[3][2]=GUICtrlRead($Input18)
$Array[3][3]=GUICtrlRead($Input19)
$Array[3][4]=GUICtrlRead($Input20)
$Array[4][0]=GUICtrlRead($Input21)
$Array[4][1]=GUICtrlRead($Input22)
$Array[4][2]=GUICtrlRead($Input23)
$Array[4][3]=GUICtrlRead($Input24)
$Array[4][4]=GUICtrlRead($Input25)
;MsgBox(0, "Tutorial",$Array[0][0])
; удалим все пробелы
$Edit1 = StringStripWS ( GUICtrlRead($Edit11), 8 )
; I WILL MAKE X THE ERROR
Local $i,$j
While StringLen($Edit1)>0
If StringLen($Edit1) = 1  Then
$Edit1 = $Edit1 & "x"
; xx в англ ну очень редкое явление
EndIf
Local $f,$s
$f = StringLeft($Edit1,1)
$Edit1 = StringTrimLeft($Edit1, 1)
$s = StringLeft($Edit1,1)
$Edit1 = StringTrimLeft($Edit1, 1)
If $f = $s Then
   $s = 'x'
EndIf
If $f = "j" Then
   $f = "i"
EndIf
If $s = "j" Then
   $s = "i"
EndIf
For $i = 0 To 4 Step 1
   For $j = 0 To 4 Step 1
	  If $Array[$i][$j] = $f Then
		 $i1 = $i
		 $j1 = $j
		 ExitLoop
	  EndIf
   Next
$j = 1
Next
For $i = 0 To 4 Step 1
   For $j = 0 To 4 Step 1
	  If $Array[$i][$j] = $s Then
		 $i2 = $i
		 $j2 = $j
		 ExitLoop
	  EndIf
   Next
$j = 1
Next
If $i1 = $i2 Then
   If $j1-1=-1 Then
   $j1=5
   EndIf
   If $j2-1=-1 Then
   $j2=5
   EndIf
$j1 = Mod($j1-1,5)
$j2 = Mod($j2-1,5)
$t1 = $i1
$t2 = $i2
$m1 = $j1
$m2 = $j2
Else
$t1 = $i1
$m1 = $j2
$t2 = $i2
$m2 = $j1
If  $j1 = $j2 Then
$i1 = Mod($i1+1,5)
$i2 = Mod($i2+1,5)
$t1 = $i1
$t2 = $i2
$m1 = $j1
$m2 = $j2
Else
$t1 = $i1
$m1 = $j2
$t2 = $i2
$m2 = $j1
EndIf

EndIf

$iEdit = $iEdit & $Array[$t1][$m1] & $Array[$t2][$m2] & " "

WEnd

 ;Exit
 EndFunc



Func Decrypt()

$Array[0][0]=GUICtrlRead($Input1)
$Array[0][1]=GUICtrlRead($Input2)
$Array[0][2]=GUICtrlRead($Input3)
$Array[0][3]=GUICtrlRead($Input4)
$Array[0][4]=GUICtrlRead($Input5)
$Array[1][0]=GUICtrlRead($Input6)
$Array[1][1]=GUICtrlRead($Input7)
$Array[1][2]=GUICtrlRead($Input8)
$Array[1][3]=GUICtrlRead($Input9)
$Array[1][4]=GUICtrlRead($Input10)
$Array[2][0]=GUICtrlRead($Input11)
$Array[2][1]=GUICtrlRead($Input12)
$Array[2][2]=GUICtrlRead($Input13)
$Array[2][3]=GUICtrlRead($Input14)
$Array[2][4]=GUICtrlRead($Input15)
$Array[3][0]=GUICtrlRead($Input16)
$Array[3][1]=GUICtrlRead($Input17)
$Array[3][2]=GUICtrlRead($Input18)
$Array[3][3]=GUICtrlRead($Input19)
$Array[3][4]=GUICtrlRead($Input20)
$Array[4][0]=GUICtrlRead($Input21)
$Array[4][1]=GUICtrlRead($Input22)
$Array[4][2]=GUICtrlRead($Input23)
$Array[4][3]=GUICtrlRead($Input24)
$Array[4][4]=GUICtrlRead($Input25)
;MsgBox(0, "Tutorial",$Array[0][0])
; удалим все пробелы
$Edit2 = StringStripWS ( GUICtrlRead($Edit22), 8 )
; I WILL MAKE X THE ERROR
Local $i,$j
While StringLen($Edit2)>0
Local $f,$s
$f = StringLeft($Edit2,1)
$Edit2 = StringTrimLeft($Edit2, 1)
$s = StringLeft($Edit2,1)
$Edit2 = StringTrimLeft($Edit2, 1)
For $i = 0 To 4 Step 1
   For $j = 0 To 4 Step 1
	  If $Array[$i][$j] = $f Then
		 $i1 = $i
		 $j1 = $j
		 ExitLoop
	  EndIf
   Next
$j = 1
Next
For $i = 0 To 4 Step 1
   For $j = 0 To 4 Step 1
	  If $Array[$i][$j] = $s Then
		 $i2 = $i
		 $j2 = $j
		 ExitLoop
	  EndIf
   Next
$j = 1
Next
If $i1 = $i2 Then
$j1 = Mod($j1+1,5)
$j2 = Mod($j2+1,5)
$t1 = $i1
$t2 = $i2
$m1 = $j1
$m2 = $j2
Else
If  $j1 = $j2 Then
   If $i1-1=-1 Then
   $i1=5
   EndIf
   If $i2-1=-1 Then
   $i2=5
   EndIf
$i1 = Mod($i1-1,5)
$i2 = Mod($i2-1,5)
$t1 = $i1
$t2 = $i2
$m1 = $j1
$m2 = $j2
Else
$t1 = $i1
$m1 = $j2
$t2 = $i2
$m2 = $j1
EndIf

EndIf

$iEdit1 = $iEdit1 & $Array[$t1][$m1] & $Array[$t2][$m2] & " "

WEnd

EndFunc

While 1
$nMsg = GUIGetMsg()
Switch $nMsg
   Case $GUI_EVENT_CLOSE
	  Exit
   Case $Encrypt
	  MsgBox(0, "Tutorial", "Encrypt")
	  Encrypt()
	  GUICtrlSetData($Edit22, $iEdit)
   Case $Decrypt
	  MsgBox(0, "Tutorial", "Decrypt")
	  Decrypt()
	  GUICtrlSetData($Edit11, $iEdit1)

EndSwitch
WEnd
