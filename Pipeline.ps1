#Pipeline enabling a block 

set-location "\\markerstudy.local\data\Users\JBateman\Powershell"
$onlyCoolFiles =
{
    process {
        if ($_.Name -like "*.ps1")
        { return $_.Name }
        }
     } 

clear-host
Get-ChildItem | &$onlyCoolFiles

$onlyCoolFiles = 
{
    begin { $retval = $headertext + ": `r`n"}
    process {
                if ($_.Name -like "*.ps1")
                {$retval = $retval + "`t" + $_.Name + "`r`n"}
            }
        end { return $retval }
}

clear-host
Get-childitem | &$onlyCoolFiles "Here is my cool header text"


# you can combine piplining with parameters

$onlyCoolFiles =
{
    param($headertext)
    begin { $retval = $headertext + ": `r`n"}
    process {
                if ($_.Name -like "*.ps1")
                {$retval = $retval + "`t" + $_.Name + "`r`n"}
            }
    end { return $retval }
}
clear-host 
Get-ChildItem | &$onlyCoolFiles "Here is my header text "

clear-host 
Get-ChildItem | &$onlyCoolFiles "This is Powershell "



