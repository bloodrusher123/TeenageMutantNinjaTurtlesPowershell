
set-location "\\markerstudy.local\data\Users\JBateman\Powershell"

#Functions are basically script blocks with names.
# To pass parameters into a Function you place the parameters after the function name instead of declaring a param key word 
function Get-Fullname($firstName, $lastName)
{
    Write-host ($firstName + " " + $lastName)
}
Get-Fullname "Arcane" "code"

#Rather than using set-variable with its -scope, you can pass by ref
#Note however it turns it into an object, thus requiring the .Value syntax
function Set-FVar([ref] $myparam)
{
    $myparam.Value = 33
}
clear-Host
$Fvar = 42
"fvar before: $Fvar"
set-FVar ([ref] $Fvar) #must add ref to call
"Fvar after: $Fvar"

#Read from pipeline
function Get-CoolFiles ()
{
    begin { $retrval = "Here are some files: `r`n"}
    process {
                if ($_.Name -like "*.ps1") # this works but ties it to .PS1 files
                { $retrval = $retrval + "`t" + $_.Name + "`r`n"}
            }
    end { return $retrval }
}

Clear-Host
Get-ChildItem | Get-CoolFiles

# Filters can be built to remove unwanted files

filter Show-PS1Files
{
    $filename = $_.Name
    if ($filename -like "*.ps1")
    {
        return $_
    }
}
Clear-Host 
Get-ChildItem | Show-PS1Files