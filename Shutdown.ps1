$delayText = "Enter the delay in minutes before shutdown"
$invalidInputText = "Invalid input. Please enter a valid number"
$delayInMinutes = Read-Host -Prompt $delayText
$confirmationTextMinute = "Are you sure you want to shutdown the computer in $delayInMinutes minute (y/n)"
$confirmationTextMinutes = "Are you sure you want to shutdown the computer in $delayInMinutes minutes (y/n)"
$cancelledText = "Shutdown cancelled"



if(![int]::TryParse($delayInMinutes, [ref]0))
{
    Write-Host $invalidInputText
    exit
}

$delayInSeconds = $delayInMinutes * 60

if($delayInMinutes -lt 2)
{
    $confirmation = Read-Host -Prompt $confirmationTextMinute
} else 
{
    $confirmation = Read-Host -Prompt $confirmationTextMinutes
}

if($confirmation -eq "y")
{
    shutdown /s /t $delayInSeconds
} else 
{
    Write-Host $cancelledText
}

