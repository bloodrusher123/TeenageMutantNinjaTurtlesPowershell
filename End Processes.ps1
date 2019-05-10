(Get-Process -IncludeUserName | Where-Object $_.username -Match "uirobot2" |Where-Object {$_.ProcessName -ne "UiPath*" -and $_.processname -ne "Outlook" }) |stop-process -Force
$FileExplorerEnd = (new-object -comobject shell.application)| Where-Object {$_.FullName -ne $null} | Where-Object {$_FullName.ToLower().EndsWith("\explorer.exe")}
$FileExplorerEnd | ForEach-Object { $_.Quit()}