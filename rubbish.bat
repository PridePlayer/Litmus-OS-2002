@echo off
@ color 0f
@ ECHO.
@ ECHO.
@ ECHO                                  说    明
@ ECHO ------------------------------------------------------------------------------
@ ECHO 这个是一键清除垃圾文件，它可以清理C盘的临时/垃圾文件，建议您在关机前清理一下；
@ ECHO 在空闲的时候清理一下，这对系统运行稍有帮助。在它清理的时候，建议您关闭一切后台
@ ECHO 程序，这样清理一些垃圾更彻底。因为不同的系统有不同的文件夹也会产生不同的临时/垃
@ ECHO 圾文件，所以以下是参考数据：
@ ECHO ○如果您是Windows XP系统，大约需要2分钟；
@ ECHO ○如果您是Windows 7系统，大约需要3分钟；
@ ECHO ○如果您是Windows 8/8.1系统，大约需要3分半；
@ ECHO ○如果您是Windows 10，大约需要4分钟。
@ ECHO ------------------------------------------------------------------------------
@ ECHO.
@ ECHO.
@ ECHO                                   关    于
@ ECHO ------------------------------------------------------------------------------
@ ECHO                版本：1.0  作者：传说当中的帅锅  QQ：2856539952
@ ECHO ------------------------------------------------------------------------------
@ ECHO.
@ ECHO.
@ ECHO                                   注    意
@ ECHO ------------------------------------------------------------------------------
@ ECHO  在清理过程中会占用CPU，建议不要在此过程中进行任何操作，否则可能导致电脑卡顿。
@ ECHO ------------------------------------------------------------------------------
@ ECHO.
@ ECHO.
echo 正在清理系统垃圾文件……
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
echo 清理系统垃圾完成！
echo 谢谢使用！
echo. & pause 
