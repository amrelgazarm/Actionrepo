# Install IIS if needed
if (-not (Get-WindowsFeature -Name Web-Server).Installed) {
    Install-WindowsFeature -Name Web-Server -IncludeManagementTools
}

# Create default.html file with your content
Set-Content -Path "C:\inetpub\wwwroot\default.html" -Value "<html><body><h1>Welcome to VM ONE</h1></body></html>" -Force
