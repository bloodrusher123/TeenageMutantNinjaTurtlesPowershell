# Any variable declared outside a script block are usable inside a script block 
clear-host 
$var = 42
& { Write-Host "Inside block: $var"}
Write-Host "Ouside Block: $var"

# changing the varibale inside the block powershell will then make a local copy and uses it til the script block ends, leaving the original alone 
clear-host 
$var = 42
& {$var = 33; Write-host "Inside the block: $var"}
Write-host "Ouside the block: $var"
set-location "\\markerstudy.local\data\Users\JBateman\Powershell"

get-variable var

get-variable var -valueOnly

set-variable "var" 99 # this is the same as $var=99
get-variable var -ValueOnly # same as just $var

#the Get/ Set- Varaible supports a scope paameter
# 0 is current scope, 1 is its parent, 2 grandparent and so on 
#Using scope we can see both copies of $var
clear-host 
$var = 42
& {$var = 33;
    write-host "Inside block: $var"
    write-host "Parent: " (get-Variable var -valueOnly -scope 1)}
Write-host "Ouside Block: $var"

clear-host
$var =42

#using Set-variable with Scope you can change the values outside a block 
clear-host 
$var = 42
& { Set-Variable var 33 -scope 1;# this then replaces the parent value - not advised
    Write-Host "Inside block: $var"
}
Write-Host "Ouside block:$var"

# Scope can be specified 
#Making it global allows it to be used inside the script, and wont be copied 
clear-host
$global:var = 42
& {$global:var = 33 }
Write-Host "Outside block: $global:var"

# On the reverse side, private makes it very private 
clear-host
$private:me = 42
& { Write-Host $me } # this will be null
Write-Host "Outside the block: $private:me"

clear-host
$private:me = 42
& { if ( $me -eq $null)
    {Write-host "I cant show you my `$me, they are null"}
        }

Write-Host "Outside the block: $private:me"

# Variables declared inside a block are available only in that script block (local scope )
clear-host 
& {$localboy = 42; Write-host "Inside block: $localboy"}
Write-host "Outside the block: $localboy" #Will be null
