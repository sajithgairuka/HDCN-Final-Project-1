Import-Module ADDSDeployment
Install-ADDSForest
-CreateDnsDelegation:$false`
-DatabasePath "C:\Windows\NTDS"`
-DomainMode "WinThreshold"`
-DomainName "cyber1337s.pw"`
-DomainNetbiosName "CYBER1337S.PW"`
-ForestMode "WinThreshold "`
-InstallDns:$true`
-LogPath "C:\Windows\NTDS"`
-NoRebootonCompletion:$false`
-SysvolPath "C:\Windows\SYSVOL"`
-Force:$true