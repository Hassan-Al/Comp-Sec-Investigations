#C:\Users\Administrator\Downloads
#C:\Temp\

#Calculate and save the hash values of the malware files to a text file
$hash1 = Get-ChildItem "C:\Users\Administrator\Downloads\malware0.txt"
$hash1.hash > "C:\Temp\somehashes.txt"

$hash2 = Get-ChildItem "C:\Users\Administrator\Downloads\malware1.txt"
$hash2.hash >> "C:\Temp\somehashes.txt"

#Search for the malware files in the Downloads directory
Get-ChildItem "C:\Users\Administrator\Downloads" -Recurse | Get-FileHash | where Hash -in (Get-Content "C:\Temp\somehashes.txt")

#Calculate the hash values for all the files and save them into a CSV
Get-ChildItem "C:\Users\Administrator\Downloads" | Get-FileHash | Select-Object -Property Hash, Path | Export-CSV "C:\Temp\Baseline.csv"

Compare-Object (Import-CSV "C:\Temp\Baseline.csv") (Get-ChildItem "C:\Users\Administrator\Downloads" | Get-FileHash | Select-Object) -Property Hash, Path 
