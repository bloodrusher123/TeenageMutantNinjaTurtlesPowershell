#using namespace System.Net
#[void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms")
#$IE = New-Object -ComObject InternetExplorer.Application; 
#$IE.Navigate("mdesktop.markerstudy.com")
#$IE.Visible.true
#do { start-sleep 5}
#while ($IE.busy)
#$Link=@($IE.Document.getElementsByTagName("input")) | Where-Object {$_.type -eq "Accept"}
#$click=[System.Windows.Forms.SendKeys]::SendWait("{~}");
#$click

[void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")

$ie=new-object -ComObject internetexplorer.application
$ie.visible=$true
$ie.navigate("mdesktop.markerstudy.com")

[Microsoft.VisualBasic.Interaction]::AppActivate("internet explorer")
Start-Sleep -Seconds 5

[System.Windows.Forms.SendKeys]::Sendwait("{ENTER}");   
