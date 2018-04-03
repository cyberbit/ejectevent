New-BurntToastNotification -Text "EjectEvent", (Get-EventLog -LogName System | Where {$_.eventID -eq 225} | Select-Object -First 1).Message
