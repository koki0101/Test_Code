@echo off
rem JavaソースコードをGraphML形式に変換する
cd %~p0

rem 引数が存在しなければ終了
if [%1]==[] goto :eof

set count=1

:loop

rem 引数がなくなるとループから出て「:confirm」に飛ぶ
 if [%1]==[] goto :confirm

rem 引数をセットする
 set arr[%count%]=%1

rem カウントを1増やす 
 set /a count+=1

rem 引数をずらす
 shift

goto loop

rem GraphML変換機能を実行し, 結果をファイルに出力する
:confirm
cd ..\GraphMLTransform
@echo on
Java > ..\report\GraphML_Transtext.graphml -jar Main.jar %arr[1]% %arr[2]% %arr[3]% %arr[4]% %arr[5]% %arr[6]% %arr[6]% %arr[7]% %arr[8]% %arr[9]% %arr[10]% 
