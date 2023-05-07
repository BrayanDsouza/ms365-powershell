# Connect to Exchange Online
# Connect-ExchangeOnline

# Define the user information
$UserPrincipalName = "me@2jpf5z.onmicrosoft.com"
$AliasToRemove = "me@brayandsouza.com"

# Get the user's mailbox
$Mailbox = Get-Mailbox -Identity $UserPrincipalName

# Remove the alias
$NewEmailAddresses = $Mailbox.EmailAddresses | Where-Object { $_ -ne "smtp:$AliasToRemove" }
Set-Mailbox -Identity $UserPrincipalName -EmailAddresses $NewEmailAddresses
