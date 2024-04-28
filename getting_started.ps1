# Install graph
Install-Module -Name Microsoft.Graph -scope CurrentUser
# Connect graph to entra
Connect-MgGraph -Scopes "User.Read.All", "Group.ReadWrite.All", "Device.ReadWrite.All"