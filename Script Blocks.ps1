#these are defined by the curly braces 
for ($f = 0; $f -le 5; $f++)
{
    "`$Increment = $f"
}

clear-host
# to put multiple commands on a single line use the ; - semicolon 
{clear-host; "powershell and c# is awesome"} # - this doesnt excute the contents of the script block it just shows it printed


# Variables can also store script blocks 
$cool = {clear-host; "powershell and c# is awesome"} # also prints out content of the script block 


# To actually run the code within the script block after assigned to a variable the & sign must be used before it
& $cool 


# This also works on a script block so does not have to be assign to a variable 
& {clear-host; "powershell and c# is awesome"}

$coolwall = {"Bugatti Veyrons are cool"}
$subzerowall = $coolwall
for ($i=0;$i -lt 3; $i++)
{
    &$coolwall;
    &$subzerowall;
}
#to return a value form a script, output it so its not consumed 

$value = {41 +1}
&$value

1 + (&$value) # to use it in an equation wrap in ()

1 + &$value # this will fail without ()

#if you do multiple commands it retruns the first value not consumed, then runs the other commands (in this case it will display the message
$value = { 42; Write-Host "pluralsight"}
&$value

1 + (&$value)
clear-host


#This then places the return value of 42 which was not consumed by the $value into the $forty variable
#this will then display the message only 

$fortyTwo = &$value;
# show the returned value assigned from the previous command
$fortyTwo

# you can also use return a value, once you do the script exits and does not carry out the rest
$value = {return 42; Write-host "Pluralsight"}
&$value

# using return alone will exit without returning anything
$value = {return; 42; "Pluralsight"}
&$value

#Parameters 1: using the Args collection 

$qa = {
    $question = $args[0]
    $answer = $args[1]
    Write-host "here is your question: $question The answer is $answer"
}
&$qa "what is cool?" "Powershell"

#Parameters 2: a more readable method - using param block
$qa = {
    param ($question, $answer)
    Write-host "here is your question:$question The answer is $answer "
}
&$qa " What else is cool" "C#"

#you can also pass by name 
&$qa -question " What else is cool" -answer "C#"

#with named parameters, orderisnt important
&$qa -answer "c#" -question "What else is cool" 
#you can shortcut parameter names by using only enough characters to make it unique 

&$qa -a "Bugatti Veyron" -q "is anything else cool"

&$qa "questions"

$qa = {
    param($question, $answer)
    if (!$answer) 
        { $answer = "You must give an answer"
        }
    write-host " Here is your question: $question The answer is $answer"
      }
&$qa " Question?"

# shorthand syntax maske the missing values behave like optional ones 
$qa = {
    param ($question, $answer = "This Question has no answer ")
    Write-host "Here is your Question: $Question The answer is $answer"
}
&$qa "question"

clear-host
#Using Explicit typing on parameters 
$math = {
    param ([int] $x, [int] $y)
    return $x * $y
}
&$math 3 11

&$math 3 "x"