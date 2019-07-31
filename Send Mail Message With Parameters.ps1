$From = "Test@email.com"
$To = "Test@email.com"
$Subject = "Testing PS Email Sender"
$Body = "Test Body Text"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"

start-sleep 2

Send-MailMessage -From $From -To $To -Subject $Subject -Body $Body -SmtpServer $SMTPServer -Port $SMTPPort -UseSsl  -DeliveryNotificationOption OnSuccess
