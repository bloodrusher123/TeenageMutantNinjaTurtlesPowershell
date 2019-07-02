start-process -FilePath "C:\Users\Public\Desktop\HP Device Manager Console.lnk"
$wshell = New-Object -ComObject wscript.shell
$wshell.AppActivate("HP DeviceManager 4.7 SP8")
Start-Sleep -seconds 4
$wshell.SendKeys("<ENTER PASSWORD>")
Start-Sleep -seconds 2
$wshell.SendKeys("~")
Start-Sleep -Seconds 10
$wshell.SendKeys("%f")
Start-Sleep -Seconds 2
$wshell.SendKeys("{DOWN}")
Start-Sleep -Seconds 2
$wshell.SendKeys("~")
Start-Sleep -Seconds 2
Add-Type -AssemblyName System.Windows.Forms
$x =  400
$y =  350 
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
function Click-MouseButton
{
    $signature=@' 
      [DllImport("user32.dll",CharSet=CharSet.Auto, CallingConvention=CallingConvention.StdCall)]
      public static extern void mouse_event(long dwFlags, long dx, long dy, long cButtons, long dwExtraInfo);
'@ 

    $SendMouseClick = Add-Type -memberDefinition $signature -name "Win32MouseEventNew" -namespace Win32Functions -passThru 

        $SendMouseClick::mouse_event(0x00000002, 0, 0, 0, 0);
        $SendMouseClick::mouse_event(0x00000004, 0, 0, 0, 0);
}

Click-MouseButton
$x =  800
$y =  590 
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
Click-MouseButton
Start-Sleep -seconds 2
$x =  1050
$y =  780 
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
Click-MouseButton
Start-Sleep -Seconds 5
[System.Windows.Forms.SendKeys]::Sendwait("\\markerstudy.local\data\Users\JBateman\TestHPDM Powershell\Test.csv");
[System.Windows.Forms.SendKeys]::Sendwait("{ENTER}");
Start-Sleep -Seconds 16
$x =  640
$y =  540 
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
Click-MouseButton
Start-Sleep -seconds 2
$x =  1120
$y =  780 
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
Click-MouseButton
Start-Sleep -Seconds 3
[System.Windows.Forms.SendKeys]::Sendwait("{ENTER}");
Start-Sleep -Seconds 3
$x =  1240
$y =  5 
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
Click-MouseButton
