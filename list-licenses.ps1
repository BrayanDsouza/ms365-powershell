# Connect-MSOLService
Connect-MSOLService

# Get information about available account SKUs
Write-Host "`n"
Write-Host "Available Licenses"
$AccountSku = Get-MsolAccountSku
$AccountSku | Format-Table -Property AccountSkuId, ActiveUnits, ConsumedUnits
