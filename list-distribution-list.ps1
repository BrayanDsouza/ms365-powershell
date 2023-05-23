
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