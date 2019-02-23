New-ADOrganizationalUnit -Name "NIBM"
New-ADOrganizationalUnit -Name  cisco -Path "OU=NIBM,DC=cyber1337s, DC=PW"
New-ADOrganizationalUnit -Name  Microsoft -Path "OU=NIBM,DC=cyber1337s, DC=PW"
New-ADOrganizationalUnit -Name  linux -Path "OU=NIBM,DC=cyber1337s, DC=PW"

New-ADOrganizationalUnit -Name  cisco_pc -Path "OU=cisco,OU=NIBM,DC=cyber1337s, DC=PW"
New-ADOrganizationalUnit -Name  cisco_user -Path "OU=cisco,OU=NIBM,DC=cyber1337s, DC=PW"
New-ADOrganizationalUnit -Name ms_pc -Path "OU=Microsoft,OU=NIBM,DC=cyber1337s, DC=PW"
New-ADOrganizationalUnit -Name ms_user -Path "OU=Microsoft,OU=NIBM,DC=cyber1337s, DC=PW"
New-ADOrganizationalUnit -Name lin_user -Path "OU=linux,OU=NIBM,DC=cyber1337s, DC=PW"
New-ADOrganizationalUnit -Name lin_pc -Path "OU=linux,OU=NIBM,DC=cyber1337s, DC=PW"

New-ADComputer -Name "cisLabpc01" -SAMAccountName "cisLabpc01" -Path "OU=cisco_pc,OU=cisco,OU=NIBM,DC=cyber1337s,DC=pw"
New-ADComputer -Name "linLabpc01" -SAMAccountName "linLabpc01" -Path "OU=lin_pc,OU=linux,OU=NIBM,DC=cyber1337s,DC=pw"

$pass = Read-Host -Prompt 'Enter Password' -AsSecureString
New-ADUser -Name CisUser01 -SamAccountName cisLabpc01 -DisplayName 'cisLabpc01' -AccountPassword $pass -Enabled $true -Path "OU=cisco_user,OU=cisco,OU=NIBM,DC=cyber1337s,DC=pw"
New-ADUser -Name sajith -SamAccountName linLabpc01 -DisplayName 'linLabpc01' -AccountPassword $pass -Enabled $true -Path "OU=lin_pc,OU=linux,OU=NIBM,DC=cyber1337s,DC=pw"
