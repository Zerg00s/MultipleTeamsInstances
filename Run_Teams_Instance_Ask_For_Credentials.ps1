#run as admin 
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }


$credential = Get-Credential
Start-Process "C:\Users\$($credential.UserName)\AppData\Local\Microsoft\Teams\Update.exe" '--processStart "Teams.exe"' -WorkingDirectory $env:windir -Credential $credential