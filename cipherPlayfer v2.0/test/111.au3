
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <EditConstants.au3>

Local $iEdit, $msg, $SelectAll, $Select, $replace, $read_only, $read_write, $undo, $empty_undo, $read, $set, $tmp

GUICreate("Окно редактирования в GUI") ; Создаёт окно в центре экрана

$iEdit = GUICtrlCreateEdit("Первая строка" & @CRLF, 10, 10, 240, 350, $ES_AUTOVSCROLL + $WS_VSCROLL + $ES_NOHIDESEL + $ES_WANTRETURN)
GUICtrlSendMsg(-1, $EM_LIMITTEXT, -1, 0) ; снимает ограничение на количество символов 30 000

$SelectAll = GUICtrlCreateButton("Выделить всё", 260, 10, 130, 25)
$Select = GUICtrlCreateButton("Выделить с 3 по 9", 260, 40, 130, 25)
$replace = GUICtrlCreateButton("Вставить в позицию", 260, 70, 130, 25)
$undo = GUICtrlCreateButton("Отменить действие", 260, 100, 130, 25)
$empty_undo = GUICtrlCreateButton("Очистить отмены", 260, 130, 130, 25)
$set = GUICtrlCreateButton("Вставить с заменой", 260, 160, 130, 25)
$read = GUICtrlCreateButton("Прочитать Edit", 260, 190, 130, 25)
$read_only = GUICtrlCreateButton("Только чтение", 260, 220, 130, 25)
$read_write = GUICtrlCreateButton("Чтение и запись", 260, 250, 130, 25)

GUISetState()

Send("{END}")

; для добавления текста не забывайте про третий параметр - 1
GUICtrlSetData($iEdit, "Вторая строка", 1)

; Запускается цикл опроса GUI до тех пор пока окно не будет закрыто
Do
    $msg = GUIGetMsg()

    Switch $msg
        Case $SelectAll
            GUICtrlSendMsg($iEdit, $EM_SETSEL, 0, -1)
        Case $Select
            GUICtrlSendMsg($iEdit, $EM_SETSEL, 3, 9)
        Case $replace
            GUICtrlSetData($iEdit, "-вставка-", 1)
            ; GUICtrlSendMsg($iEdit, $EM_REPLACESEL, True, '-вставка-') ; или так
        Case $set
            GUICtrlSetData($iEdit, 'Вставка текста' & @CRLF & 'с заменой предыдущего')
        Case $read
            MsgBox(4096, 'Сообщение', GUICtrlRead($iEdit))
        Case $read_only
            GUICtrlSendMsg($iEdit, $EM_SETREADONLY, True, 0)
        Case $read_write
            GUICtrlSendMsg($iEdit, $EM_SETREADONLY, False, 0)
        Case $undo
            GUICtrlSendMsg($iEdit, $EM_UNDO, 0, 0)
        Case $empty_undo
            GUICtrlSendMsg($iEdit, $EM_EMPTYUNDOBUFFER, 0, 0)
    EndSwitch
Until $msg = $GUI_EVENT_CLOSE
GUIDelete()