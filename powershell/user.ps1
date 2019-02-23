Import-Module ActiveDirectory

$pass=ConvertTo-SecureString "Abc@123" -AsPlainText -Force

$filepath= Read-Host -Prompt "Enter File Path"

$users=Import-Csv $filepath

foreach($user in $users){

$fname=$user.'first_name'
$lname=$user.'last_name'
$logname=$user.'login_n'
$OU=$user.'Organizational Unit'

New-ADUser -Name "$fname $lname" -GivenName $fname -Surname $lname -UserPrincipalName $logname -Path $OU -AccountPassword $pass -ChangePasswordAtLogon $true -Enabled $true

echo "$fname Done!"
}