Install-Module -Name PSReadline -Force
Install-Module -Name PSScriptAnalyzer -Force

# Define the log file location
$LogFile = "C:\Honeypot\HoneypotLog.txt"

# Create the log directory if it doesn't exist
if (!(Test-Path -Path "C:\Honeypot")) {
    New-Item -ItemType Directory -Path "C:\Honeypot"
}

# Start listening on a specific port (e.g., RDP port 4634)
$Listener = New-Object System.Net.Sockets.TcpListener([IPAddress]::Any, 4634)
$Listener.Start()
Write-Host "Honeypot is active and listening on port 4634..."

while ($true) {
    try {
        # Accept incoming connections
        $Client = $Listener.AcceptTcpClient()
        $RemoteEndPoint = $Client.Client.RemoteEndPoint.ToString()
        Write-Host "Connection attempt from $RemoteEndPoint"

        # Log the connection attempt
        Add-Content -Path $LogFile -Value "Connection attempt from $RemoteEndPoint at $(Get-Date)"
        $Client.Close()
    } catch {
        Write-Host "Error: $_"
    }
}
# Enable PowerShell logging
configuire PowerShell logging
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" -Name EnableScriptBlockLogging -Value 1
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\PowerShell\Transcription" -Name EnableTranscripting -Value 1
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\PowerShell\Transcription" -Name OutputDirectory -Value "C:\Honeypot\PowerShellLogs"
directory if it doesn't exist
if (!(Test-Path -Path "C:\Honeypot\PowerShellLogs")) {
    New-Item -ItemType Directory -Path "C:\Honeypot\PowerShellLogs"
} write-Host "PowerShell logging configured."
run the honeypot script
Write-Host "Starting the honeypot script..."
.\Honeypot.ps1
# Create the log directory if it doesn't exist
enable .\.gitconfigure PowerShell logging
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" -Name EnableScriptBlockLogging -Value 1 .\.gitconfigure PowerShell logging
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\PowerShell\Transcription" -Name EnableTranscripting -Value 1 .\.gitconfigure PowerShell logging           
Import-Alias and run'.\Blockchain network.java' 
run the '.\honey pot test.ps1'
Active and monitor the honeypot
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\PowerShell\Transcription" -Name OutputDirectory -Value "C:\Honeypot\PowerShellLogs"
# Create the log port 88
if (!(Test-Path -Path "C:\Honeypot\PowerShellLogs")) {
    New-Item -ItemType Directory -Path "C:\Honeypot\PowerShellLogs"
} write-Host "PowerShell logging configured."