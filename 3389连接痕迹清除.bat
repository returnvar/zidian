@echo off
color 0A
title 3389连接痕迹清除     蛋清@F4ckTeam
mode con cols=88 lines=20
echo =======================================================================================
echo   ┏━━━━━━━┓        F CK           法客论坛 - F4ck Team
echo ┏┫　　　　｜｜｜┣┓　　　┏┓           关于法客 - http://team.f4ck.net
echo ┗┫━━　┃　━━┣┛　　　┣┫           联系法客 - http://team.f4ck.net/call.html
echo 　┃　━━━━━　┃　　┏┳┫┣┳┓       核心成员 - http://team.f4ck.net/team.html
echo 　┗━━━┳━━━┛　　┃　　　　┃       荣誉会员 - http://team.f4ck.net/honor.html
echo 　┏━━▇▇▇━━━━━┻━━━━┛       邀 请 码 - http://team.f4ck.net/reg.html
echo 　┃　　▇▇▇                             内部邮箱 - http://team.f4ck.net/mail.html
echo 　┃　　▇▇▇                             黑客游戏 - http://game.f4ck.net
echo 　┗　　┃U┃                              漏洞提交 - http://vul.f4ck.net
echo 　　　　┃ ┃                              5 元空间 - http://idc.f4ck.net
echo =======================================================================================
set /p fk= 确定要清空3389连接痕迹吗？(y/n)
if /i "%fk%"=="y" goto y
if /i "%fk%"=="n" goto n
call %0

:y
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client" /f
del /a /f /q %HOMEPATH%\Documents\Default.rdp
echo 命令执行成功，请手动查看是否清除。
pause >nul

:n
exit