# Connect to MSOL and Exchange Online
Connect-MsolServices
Connect-ExchangeOnline

Write-Host = "Listing all the available license."
# Get information about available account SKUs
$AccountSku = Get-MsolAccountSku

$AccountSku | Format-Table -Property AccountSkuId, ActiveUnits, ConsumedUnits


# Get MSOL users and format the output as a table
$users = Get-MsolUser
$users | Format-Table -Property DisplayName, UserPrincipalName, Department, UserType


$UserPrincipleName = Read-Host = "Enter the User Principle Name:"
$License = Read-Host = "Enter License Name"

Set-MsolUserLicense -UserPrincipalName $UserPrincipleName -AddLicenses $License