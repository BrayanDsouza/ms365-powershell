#Connect to MSOL and Exchange Online
Connect-MsolService
Connect-ExchangeOnline

$UserPrincipalName = Read-Host "Enter User email"

# Set the value that will signal the end of the loop
$endValue = "stop"

Get-MsolGroup
# Loop until the user enters the end value
while ($true) {
    # Prompt the user for input
    $Groups = Read-Host "Enter Group name the user should be added to (enter '$endValue' to stop)"

    # Check if the input value is the end value
    if ($Groups -eq $endValue) {
        # Exit the loop if the input value is the end value
        break
    }

    # Do something with the input value
    Add-UnifiedGroupLinks -Identity $Groups -LinkType "Members" -Links $UserPrincipalName

    echo "'$UserPrincipalName' added to '$Groups'"
}


