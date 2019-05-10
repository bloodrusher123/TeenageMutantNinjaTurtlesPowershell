start-process -FilePath "C:\Users\Public\Desktop\HP Device Manager Console.lnk"
$wshell = New-Object -ComObject wscript.shell
$wshell.AppActivate("HP DeviceManager 4.7 SP8")
Start-Sleep -seconds 4
$wshell.SendKeys("pANFsz!8z0zmB")
Start-Sleep -seconds 2
$wshell.SendKeys("~")
Start-Sleep -Seconds 10
$wshell.SendKeys("%f")
$wshell.SendKeys("M")