
Write-Host = "Currently available M365 Groups"
# Get information about all distribution groups
$groups = Get-UnifiedGroup

$n = 1

# Loop through each group and display its name and email address
foreach ($group in $groups) {
    Write-Host "Group name: $($group.DisplayName)"
    Write-Host "Group email address: $($group.PrimarySmtpAddress)"
    $n++
}
