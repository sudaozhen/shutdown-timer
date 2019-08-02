'On Error Resume Next
Dim t_d,t_h,t_m,t_s

Dim wsh
Set wsh = Wscript.CreateObject("Wscript.Shell") 
msgbox "所有对话框里均不输入内容即取消定时"
t_d=Inputbox("请输入倒计时时间（天）（最大49.7）:","定时休眠") 
t_h=Inputbox("请输入倒计时时间（小时）:","定时休眠") 
t_m=Inputbox("请输入倒计时时间（分钟）:","定时休眠") 
t_s=Inputbox("请输入倒计时时间（秒）:","定时休眠")
 
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