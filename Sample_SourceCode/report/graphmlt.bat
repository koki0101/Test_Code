@echo off
rem Java�\�[�X�R�[�h��GraphML�`���ɕϊ�����
cd %~p0

rem ���������݂��Ȃ���ΏI��
if [%1]==[] goto :eof

set count=1

:loop

rem �������Ȃ��Ȃ�ƃ��[�v����o�āu:confirm�v�ɔ��
 if [%1]==[] goto :confirm

rem �������Z�b�g����
 set arr[%count%]=%1

rem �J�E���g��1���₷ 
 set /a count+=1

rem ���������炷
 shift

goto loop

rem GraphML�ϊ��@�\�����s��, ���ʂ��t�@�C���ɏo�͂���
:confirm
cd ..\GraphMLTransform
@echo on
Java > ..\report\GraphML_Transtext.graphml -jar Main.jar %arr[1]% %arr[2]% %arr[3]% %arr[4]% %arr[5]% %arr[6]% %arr[6]% %arr[7]% %arr[8]% %arr[9]% %arr[10]% 
