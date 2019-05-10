clear-host
$i = 1
while ($i -le 5)
{
    "`$i = $i"
    $i = $i + 1
}

#While loop wont excute if the condition is already true 
clear-host
$i = 6
while ($i -le 5)
{
    "`$i = $i"
    $i = $i + 1
}

#Do While 
clear-host
$i = 1
do 
{
    "`$i = $i"
    $i++
}    while($i -le 5)
#Do while always excute at least once 
clear-host
$i = 6
do 
{
    "`$i = $i"
    $i++
}    while($i -le 5)

clear-host
$i = 1
do 
{
    "`$i = $i"
    $i++
}    until($i -gt 5)

#For Loop

Clear-host
$f = 2
for (; $f -le 5; $f++)
{
    "`$f = $f"
}

# Iterating over a collection 1 by 1 

Clear-host 
$array = 11,12,13,14,15
for ($i=0; $i -lt $array.Length; $i++)
{
    "`$array[$i]=" + $array[$i]
}

# Foreach collections 
clear-host
$array = 11,12,13,14,15
foreach ($item in $array)
{
    "`$item = $item"
}

#Foreach Array of Objects
clear-host
Set-Location "c:\\Users\JBateman\desktop"
foreach ($file in Get-ChildItem)
{
    if ($file.Name -like "*.docx")
    {
    $file.Name
    break 
    }
}


clear-host
Set-Location "c:\\Users\JBateman\desktop"
foreach ($file in Get-ChildItem)
{
    if ($file.Name -like "*.docx")
    {
    $file.Name
    continue
    }
    "This isnt a Doc file: $file"
}
#nested loop 
clear-host
foreach ($outside in 1..3)
{
    "`$outside=$outside"
    foreach ($inside in 4..6)
    {
        "  `$inside = $inside"
        continue
    }
}

clear-host
:outsideloop foreach ($outside in 1..3)
{
    "`$outside=$outside"
    foreach ($inside in 4..6)
    {
        "`$inside=$inside"
    break outsideloop
    }
}

clear-host
:outsideloop foreach ($outside in 1..3)
{
    "`$outside=$outside"
    foreach ($inside in 4..6)
    {
        "  `$inside = $inside"
        continue outsideloop
        "This will never excute as conitinue goes back to the start of the inner loop"
    }
    "Some or more stuff here that will never run "
}


