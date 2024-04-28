# Bulk creating users by using a csv file
$users = Import-Csv -Path "C:\path\to\your\Users.csv"

foreach ($user in $users) {
    New-MgUser -UserPrincipalName $user.UserName `
               -GivenName $user.FirstName `
               -Surname $user.LastName `
               -DisplayName $user.DisplayName `
               -JobTitle $user.JobTitle `
               -Department $user.Department `
               -AccountEnabled $true `
               -MailNickname $user.FirstName `
               -UsageLocation "US" `
               -PasswordProfile @{ForceChangePasswordNextSignIn = $true; Password = "Password"}
}