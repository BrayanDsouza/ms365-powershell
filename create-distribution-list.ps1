#Get Initial Available Distribution List names
Write-Host = "Currently available distribution lists."

# Loop through the available account Distribution List
$AvaiableDistList = Get-DistributionGroup

# Loop through the available account SKUs and display license information
foreach ($Dist in $AvaiableDistList) {
    Write-Host = "Group Name: $($Dist.DisplayName)"
    Write-Host = "Group Email Adress: $($Dist.PrimarySmtpAddress)"
    Write-Host = " "
}
# Enter Details for the distribution list
$DistName = Read-Host "Enter distribution list name"
$DistListName = Read-Host "Enter primary SMTP name (name@domain.com)"

#Connect to MSOL and Exchange Online
Connect-MsolService
Connect-ExchangeOnline

New-DistributionGroup -Name $DistName -PrimarySmtpAddress $DistListName