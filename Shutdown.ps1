$delayInMinutes = Read-Host -Prompt "Enter the delay in minutes before shutdown"

if(![int]::TryParse($delayInMinutes, [ref]0))
{
    Write-Host "Invalid input. Please enter a valid number"
    exit
}

$delayInSeconds = $delayInMinutes * 60

$confirmation = Read-Host -Prompt "Are you sure you want to shutdown the computer in $delayInMinutes minute(s) (y/n)"

if($confirmation -eq "y")
{
    shutdown /s /t $delayInSeconds
} else 
{
    Write-Host "Shutdown cancelled"
}

