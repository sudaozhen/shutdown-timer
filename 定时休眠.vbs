'On Error Resume Next
Dim t_d,t_h,t_m,t_s

Dim wsh
Set wsh = Wscript.CreateObject("Wscript.Shell") 
msgbox "���жԻ���������������ݼ�ȡ����ʱ"
t_d=Inputbox("�����뵹��ʱʱ�䣨�죩�����49.7��:","��ʱ����") 
t_h=Inputbox("�����뵹��ʱʱ�䣨Сʱ��:","��ʱ����") 
t_m=Inputbox("�����뵹��ʱʱ�䣨���ӣ�:","��ʱ����") 
t_s=Inputbox("�����뵹��ʱʱ�䣨�룩:","��ʱ����")
 
If t_d="" then if t_h="" then if t_m="" then if t_s="" then wsh.run "taskkill /f /im Wscript.exe" &wscript.quit

if t_d="" then t_d=0
if t_h="" then t_h=0
if t_m="" then t_m=0
if t_s="" then t_s=0
 
WScript.Sleep 1000*t_s
WScript.Sleep 60*1000*t_m
WScript.Sleep 60*60*1000*t_h
WScript.Sleep 24*60*60*1000*t_d


wsh.run "rundll32.exe powrprof.dll,SetSuspendState sleep"