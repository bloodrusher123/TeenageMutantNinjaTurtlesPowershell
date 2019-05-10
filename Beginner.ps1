Clear-Host

"This is a string"
'i just want to say "Hello world", ok?'


"Plural`bsight"
"Plural`nsight"

$heretext = @"
some text 
some more text 
       a bit more 

a blank line above
"@
$heretext

Clear-Host
$item = (Get-ChildItem).Count
$loc = Get-Location
"There are $item items are in the folder $loc."

$hereinterpolation = @"
Items`tFolder
------`t----------------
$item`t`t$loc

"@
$hereinterpolation

Clear-Host
"There are $((Get-ChildItem).Count) items are in the folder $(Get-Location)."

"The 15% tip of a 33.33 dollar bill is $(33.33 * 0.15) dollars"

[string]::Format("there are {0} items." , $item)
"there are {0} items in the location {1}." -f $item, $loc

"The 20% tip of a 33.33 dollar bill is {0:0.00} dollars!" -f (33.33 * 0.20)

"Pluralsight" -like "Plural*[a-c]"

$array = "Arcane", "code"
$array[0]
$array[1]
$array

$array.GetType()

$array[0] = "plural"

$array[1] = "sight"

$array = ("plural", "sight")
$array

$array = @()
$array = 1..5
$array

$numbers = 1, 42, 256

$numbers -notcontains 99

$numbers -notcontains 42

$hash = @{"key"       = "Value";
        "Pluralsight" = "pluralsight.com";
        "Arcane Code" = "arcane.com"}

$hash."Pluralsight"

$mykey = "Pluralsight"
$hash.$mykey
$hash.$("Plural" + "sight")

$hash["Top Gear"] = "topgear.com"

$hash.Contains("Arcance Code")
$hash.ContainsValue("pluralsight.com")
$hash.Values

$hash.Values -contains "pluralsight.com"































