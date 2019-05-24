#Requires -RunAsAdministrator


if ($env:USERDNSDOMAIN -eq 'FULLYQUALIFIEDDOMAINHERE') {
$alarmSet = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Wake Up on Alarm,Daily Event").return
$alarmTime = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Alarm Time(HH:MM:SS),00:15:00").return
$saveSettings = (gwmi -Class Lenovo_SaveBiosSettings -Namespace root\wmi).SaveBiosSettings("BIOSPASSWORD,ascii,us”).return
}

elseif ($env:USERDNSDOMAIN -eq 'FULLYQUALIFIEDDOMAINHERE' -and $env:COMPUTERNAME -like 'HOSTNAME') {
$alarmSet = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Wake Up on Alarm,Daily Event").return
$alarmTime = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Alarm Time(HH:MM:SS),00:30:00").return
$saveSettings = (gwmi -Class Lenovo_SaveBiosSettings -Namespace root\wmi).SaveBiosSettings("BIOSPASSWORD,ascii,us”).return
}

elseif ($env:USERDNSDOMAIN -eq 'FULLYQUALIFIEDDOMAINHERE' -and $env:COMPUTERNAME -like 'HOSTNAME') {
$alarmSet = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Wake Up on Alarm,Daily Event").return
$alarmTime = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Alarm Time(HH:MM:SS),01:00:00").return
$saveSettings = (gwmi -Class Lenovo_SaveBiosSettings -Namespace root\wmi).SaveBiosSettings("BIOSPASSWORD,ascii,us”).return
}

elseif ($env:USERDNSDOMAIN -eq 'FULLYQUALIFIEDDOMAINHERE') {
$alarmSet = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Wake Up on Alarm,Daily Event").return
$alarmTime = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Alarm Time(HH:MM:SS),00:00:00").return
$saveSettings = (gwmi -Class Lenovo_SaveBiosSettings -Namespace root\wmi).SaveBiosSettings("BIOSPASSWORD,ascii,us”).return
}

elseif ($env:USERDNSDOMAIN -eq 'FULLYQUALIFIEDDOMAINHERE') {
$alarmSet = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Wake Up on Alarm,Daily Event").return
$alarmTime = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Alarm Time(HH:MM:SS),00:00:00").return
$saveSettings = (gwmi -Class Lenovo_SaveBiosSettings -Namespace root\wmi).SaveBiosSettings("BIOSPASSWORD,ascii,us”).return
}

elseif ($env:USERDNSDOMAIN -eq 'FULLYQUALIFIEDDOMAINHERE' -and $env:COMPUTERNAME -like 'HOSTNAME') {
$alarmSet = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Wake Up on Alarm,Daily Event").return
$alarmTime = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Alarm Time(HH:MM:SS),00:45:00").return
$saveSettings = (gwmi -Class Lenovo_SaveBiosSettings -Namespace root\wmi).SaveBiosSettings("BIOSPASSWORD,ascii,us”).return
}


else {
$alarmSet = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Wake Up on Alarm,Daily Event").return
$alarmTime = (gwmi -Class Lenovo_SetBiosSetting -Namespace root\wmi).SetBiosSetting("Alarm Time(HH:MM:SS),01:00:00").return
$saveSettings = (gwmi -Class Lenovo_SaveBiosSettings -Namespace root\wmi).SaveBiosSettings("BIOSPASSWORD,ascii,us”).return
}


Write-Host "Setting alarm: $alarmSet"
Write-Host "Setting alarm time: $alarmTime"
Write-Host "Saving settings: $saveSettings"
gwmi -Class Lenovo_BiosSetting -Namespace root\wmi -Filter "CurrentSetting LIKE '%wake up on alarm%' or CurrentSetting LIKE '%alarm time%'" 
