(New-Object Net.WebClient).DownloadFile("URL","$env:USERPROFILE\Downloads\FILENAME")
start-process "$env:USERPROFILE\Downloads\FILENAME"
&'C:\Program Files\7-Zip\7z.exe' x "$env:USERPROFILE\Downloads\FILENAME.rar" -o"$env:USERPROFILE\Downloads" -y
ii $env:USERPROFILE\Downloads
exit
