# azure-arm-templates-study
Playground for Azure Arm templates

# Preparation
## Powershell module install

```powershell
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force
```

## Sign in to Azure
To start working with Azure PowerShell, sign in with your Azure credentials.

```powershell
Connect-AzAccount
```

# Some powershell commands
```powershell
Get-AzTenant #get all authorized tenants for an Azure account
Get-AzSubscription | Format-List -Property Name, Id | Format-Table # lists Subscriptions
```