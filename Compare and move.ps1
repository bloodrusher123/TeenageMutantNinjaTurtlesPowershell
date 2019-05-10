$file = Get-ChildItem -Recurse -Path "\\markerstudy.local\data\Users\JBateman\BPA"
$file2 = Get-ChildItem -Recurse -Path "H:\IT BPA\Jason's Folder"
$Filecompare = Compare-Object -ReferenceObject $file -DifferenceObject $file2
#Get-ChildItem 
$Filecompare = 