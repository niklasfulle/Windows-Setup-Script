
# start windows powershell as admin

winget install -e --id Microsoft.PowerShell



# start powershell as admin
Start-Process "C:\Program Files\PowerShell\7\pwsh.exe" -Verb runAs

# close windows powershell

exit