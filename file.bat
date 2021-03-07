@echo off
echo -----------------------------------------------------------------------------
echo IE Gecici Dosyalar Listesi.
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
echo Gecici dosyalar *.tmp *._tmp *.log *.chk *.old siliniyor...
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
rem .log
rem del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
echo ?n bellege yaz?lan gecici dosyalar siliniyor
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
rem cookieler siliniyor...
rem del /f /q %userprofile%\COOKIES s\*.*
rem del /f /q %userprofile%\recent\*.*
echo Faydasiz Disk temizleme dosyalar siliniyor ...
%windir%\system32\sfc.exe /purgecache
echo ?n okuma bilgi optimisazyonu...
%windir%\system32\defrag.exe %systemdrive% -b
@echo on  
ipconfig/release                  
ipconfig/renew                   
ipconfig/flushdns                 
ipconfig /registerdns           
arp -d                                  
Nbtstat -R                         
Nbtstat -RR
echo Islem basriyla tamamlandi
echo -----------------------------------------------------------------------------
@pause
