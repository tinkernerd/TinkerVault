$ExtendDate = Get-Date -Year 2024 -Month 12 -Day 20 -Hour 23 -Minute 59 -Second 00
net user smcloaner /expires:never
Set-LocalUser -Name smcloaner -AccountExpires $ExtendDate
Write-Host "smcloaner account expiration extended to $ExtendDate"