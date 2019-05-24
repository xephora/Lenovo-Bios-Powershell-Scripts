#Requires -RunAsAdministrator

gwmi -Class Lenovo_BiosSetting -Namespace root\wmi | ? { $_.CurrentSetting -notlike "" } | % { $_.CurrentSetting } | Out-File -FilePath $env:temp\BiosSettings.log -NoClobber
write-output "Data has been logged in $env:temp\BiosSettings.log"
Invoke-Item "$env:temp\BiosSettings.log"