# Specify the URL of the file to download
$puttyInstallerUrl = "https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe"

# Specify the directory where you want to save the downloaded file
$outputDirectory = "C:\Users\TraceDeath\Downloads"

# Specify the filename for the downloaded file
$fileName = "putty.exe"

# Combine the output directory and filename to create the full output path
$outputPath = Join-Path -Path $outputDirectory -ChildPath $fileName

# Download the file using Invoke-WebRequest
Invoke-WebRequest -Uri $puttyInstallerUrl -OutFile $outputPath

# Check if the file was downloaded successfully
if (Test-Path $outputPath) {
    Write-Host "File downloaded successfully to: $outputPath"
    # Run the downloaded executable
    Start-Process -FilePath $outputPath
} else {
    Write-Host "Failed to download the file"
}
