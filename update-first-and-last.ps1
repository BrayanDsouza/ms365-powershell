
#connect to office online
#connect to exchange online
Connect-ExchangeOnline
Connect-MsolService



foreach ($group in $groups) {
    Write-Host "Group name: $($group.DisplayName)"
    Write-Host "Group email address: $($group.PrimarySmtpAddress)"
    $n++
}

$UserPrincipalName = Read-Host "Enter User Email that needs First and Last name updated"

$FirstName = Read-Host "Enter Updated First Name"
$LastName = Read-Host "Enter Updated Last Name"

Set-User -Identity $UserPrincipalName -FirstName $FirstName -LastName $LastName
