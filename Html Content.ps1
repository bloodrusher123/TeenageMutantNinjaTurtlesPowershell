$SiteAddress = "mdesktop.markerstudy.com"
$WebResponseObj = Invoke-WebRequest -Uri $SiteAddress
$WebResponseObj.Links | Foreach {$_.href }