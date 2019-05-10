Clear-host
$var =49
switch ($var)
{
    41 {"Forty one"}
    42 {"Forty two"}
    43 {"Forty three"}
    default {"Default"}
}

#Match all lines that match 

$var = 42 
switch ($var)
{
    42 {"Forty two"}
    "42"{"Forty two string"}
    default {"default"}
}

#Break

$var = 42 
switch ($var)
{
    42 {"Forty two"; break}
    "42" {"Forty two string"}
    default {"Default"}
}

#Collections 

Clear-host
switch (3,1,2,42)
{
    1{"one"}
    2{"two"}
    3{"three"}
    default {"The default answer"}
}


#Insensitive case by defautl for Comparing strings 
Clear-host
switch ("Pluralsight")
{
    "pluralsight" {"lowercase"}
    "PLURALSIGHT" {"UPPERCASE"}
    "Pluralsight" {"mixedcase"}
}
Clear-host
switch -CaseSensitive("Pluralsight")
{
    "pluralsight" {"lowercase"}
    "PLURALSIGHT" {"UPPERCASE"}
    "Pluralsight" {"mixedcase"}
}

#Wildcards 
Clear-host
switch -Wildcard ("Pluralsight")
{
    "Plural*" {"*"}
    "?uralsight" {"?"}
    "Pluralsi???" {"???"}
}



