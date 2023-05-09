#Connect to MSOL and Exchange Online
Connect-MsolService
Connect-ExchangeOnline

$UserPrincipalName = Read-Host "Enter User email"

# Get information about all distribution groups
$groups = Get-DistributionGroup

$n = 1

# Loop through each group and display its name and email address
foreach ($group in $groups) {
    Write-Host "Group name $n : $($group.Name)"
    Write-Host "Group email address $n : $($group.PrimarySmtpAddress)"
    $n++
}

# Set the value that will signal the end of the loop
$endValue = "stop"

# Loop until the user enters the end value
while ($true) {
    # Prompt the user for input
    $DistributionList = Read-Host "Enter Distribution list name the user should be added to (enter '$endValue' to stop)"

    # Check if the input value is the end value
    if ($DistributionList -eq $endValue) {
        # Exit the loop if the input value is the end value
        break
    }

    # Do something with the input value
    Add-DistributionGroupMember -Identity $DistributionList -Member $UserPrincipalName

    Write-Output "'$UserPrincipalName' added to '$DistributionList'"
}