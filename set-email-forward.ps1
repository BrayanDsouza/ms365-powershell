Connect-ExchangeOnline

$FromEmail = Read-Host "Forward e-mail from"
$ToEmail = Read-Host "To Email address"

Set-Mailbox -Identity $FromEmail -ForwardingSMTPAddress $ToEmail

Write-Host "Email is now forwarded from '$FromEmail' to '$ToEmail'"