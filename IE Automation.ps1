[void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")

$ie=new-object -ComObject internetexplorer.application
$ie.visible=$true
$ie.navigate("mdesktop.markerstudy.com")
[Microsoft.VisualBasic.Interaction]::AppActivate("internet explorer")
#Maximise window script
$sw = @'
[DllImport("user32.dll")]
public static extern int ShowWindow(int hwnd, int nCmdShow);
'@

$type = Add-Type -Name ShowWindow2 -MemberDefinition $sw -Language CSharpVersion3 -Namespace Utils -PassThru
$type::ShowWindow($ie.hwnd, 3)  
#Maximise window script end


Start-Sleep -Seconds 3
[System.Windows.Forms.SendKeys]::Sendwait("{ENTER}");
Start-Sleep -Seconds 5
#Mouse Position
Add-Type -AssemblyName System.Windows.Forms
$x =  100
$y =  220 
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
#Click Mouse Function Script
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
Start-Sleep -Seconds 5
(New-Object -ComObject WScript.Shell).AppActivate((get-process CDViewer).MainWindowTitle)
Start-Sleep -Seconds 10
#Mouse Position
Add-Type -AssemblyName System.Windows.Forms
$x =  700
$y =  390 
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
Click-MouseButton
Start-Sleep -Seconds 10
[System.Windows.Forms.SendKeys]::Sendwait("uirobot1");
[System.Windows.Forms.SendKeys]::Sendwait("{TAB}");
start-sleep -Seconds 2
[System.Windows.Forms.SendKeys]::Sendwait("<ENTER PASSWORD>");
Start-Sleep -Seconds 2
[System.Windows.Forms.SendKeys]::Sendwait("{ENTER}");


