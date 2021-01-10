$Computer = Read-Host "Enter the computer name"
Get-WinEvent -LogName Application -computername $Computer |
   Where-Object LevelDisplayname -eq Error |
     Where-Object TimeCreated -ge ((Get-Date).AddDays(-14)) |
       Export-CSV -Path .\Errors.csv