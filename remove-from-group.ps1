#Connect to MSOL and Exchange Online
Connect-MsolService
Connect-ExchangeOnline

$UserPrincipalName = Read-Host "Enter User email"

# Set the value that will signal the end of the loop
$endValue = "stop"

# Get information about all distribution groups
$groups = Get-UnifiedGroup

$n = 1

# Loop through each group and display its name and email address
foreach ($group in $groups) {
    Write-Host "Group name: $($group.DisplayName)"
    Write-Host "Group email address: $($group.PrimarySmtpAddress)"
    $n++
}

# Loop until the user enters the end value
while ($true) {
    # Prompt the user for input
    $Groups = Read-Host "Enter Group name the user should be removed from (enter '$endValue' to stop)"

    # Check if the input value is the end value
    if ($Groups -eq $endValue) {
        # Exit the loop if the input value is the end value
        break
    }

    # Do something with the input value
    Remove-UnifiedGroupLinks -Identity $Groups -LinkType "Members" -Links $UserPrincipalName

    Write-Output "'$UserPrincipalName' added to '$Groups'"
}
