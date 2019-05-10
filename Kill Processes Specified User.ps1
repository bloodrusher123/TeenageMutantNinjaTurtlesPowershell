$ArKill = @("iexplore","Outlook")
foreach ($process in $ArKill)
{
    Get-Process -IncludeUserName | Where-Object {$_.username -match "uirobot2" -and $_.processname -eq $process}|
    Stop-Process -Force
}