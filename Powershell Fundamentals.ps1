
$var = 2
if ($var -eq 2)
{
Clear-Host
"If branch"
}
else
{
Clear-Host
"Else branch"
}


# if elseif Script block 
if ($var -eq 1)
{
    Clear-Host
    "If -eq 1 branch"
}
else
{
    if ($var -eq 2)
    {
    Clear-Host
    "If -eq 2 branch"
    }
    else
    {
    Clear-Host
    "else else branch"
    }
}