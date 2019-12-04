$DestFolder = "C:/Users/jbateman/Documents/"
$source = "C:/Users/jbateman/Downloads/InsuranceFactoryMotor_20191204.xlsx"
$excelObj = New-Object -ComObject Excel.Application
$excelObj.DisplayAlerts = $false
$OldWorkbook = $excelObj.Workbooks.Open($source)
$RawDataWorksheet = $OldWorkbook.Worksheets | where {$_.Name -like "Raw*"}
$NewWorkbook = $excelObj.Workbooks.Add()
$NewWorkSheet = $NewWorkbook.Worksheets.Add()
$RawDataWorksheet.Copy($NewWorkSheet)
$OldWorkbook.Close()
$exportPath = join-path -Path $DestFolder -ChildPath "InsuranceFatcoryRawData.xlsx"
$NewWorkbook.SaveAs($exportPath)
$NewWorkbook.Close()
$excelObj.Quit()
