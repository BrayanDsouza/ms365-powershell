# Connect MSOL and Exchange Online
#Connect-ExchangeOnline
#Connect-MsolService

# UserPrincipal Name
$UserPrincipalName = Read-Host "Enter the User Principal Name email@domain.com"

# Get Fist and the Last name of the User
$FirstName = Read-Host "Enter first name of the User" 
$LastName = Read-Host "Enter last name of the user"

$DisplayName = $FirstName + " " + $LastName

# Get Department
$Department = Read-Host "Enter Department"

# Get the Lincenses available
# Connect to Microsoft 365
Connect-MsolService

Write-Host "--"

# Get information about available account SKUs
$AccountSku = Get-MsolAccountSku

# Loop through the available account SKUs and display license information
foreach ($Sku in $AccountSku) {
    Write-Host "SKU: $($Sku.AccountSkuId)"
    Write-Host "Total licenses: $($Sku.ActiveUnits)"
    Write-Host "Available licenses: $($Sku.ActiveUnits - $Sku.ConsumedUnits)"
    Write-Host ""
}

# Dummy
# $Empty = Read-Host "Do you want to proceed - Enter Dummy Text"

# Enter the License needed for the user
$License = Read-Host "Enter the license needed for the user"

# Create a new user
New-MsolUser -UserPrincipalName $UserPrincipalName -DisplayName $DisplayName -FirstName $FirstName -LastName $LastName -LicenseAssignment $License -UsageLocation "AE" -Department $Department 



