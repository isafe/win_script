if([System.IO.File]::Exists("$env:USERPROFILE\Downloads\FILENAME"))
{
    Write-Host "File Exists"
}
else
{
    (New-Object Net.WebClient).DownloadFile(URL,"$env:USERPROFILE\Downloads\FILENAME")
    start-process "$env:USERPROFILE\Downloads\FILENAME"
}

if([System.IO.File]::Exists("$env:USERPROFILE\Downloads\FILENAME"))
{
    remove-item "$env:USERPROFILE\Downloads\FILENAME" -force
}

&'C:\Program Files\7-Zip\7z.exe' x "$env:USERPROFILE\Downloads\FILENAME.rar" -o"$env:USERPROFILE\Downloads" -y
ii $env:USERPROFILE\Downloads
exit
