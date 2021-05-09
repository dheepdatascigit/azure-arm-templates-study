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

# Azure ARM template test tool kit
git clone https://github.com/Azure/arm-ttk.git

Import-Module path\to\arm-ttk\arm-ttk.psd1

- Note: If you downloaded or cloned the tool to your Downloads directory, the path would look something like this: C:\Users\<user>\Downloads\arm-ttk\arm-ttk\arm-ttk.psd1.

```powershell
Test-AzTemplate -TemplatePath .
```

# Some powershell commands
```powershell
Get-AzTenant #get all authorized tenants for an Azure account
Get-AzSubscription | Format-List -Property Name, Id | Format-Table # lists Subscriptions
```

# how to add tags
```shell
git tag -a v1.01 -m "blank template run"
```
add tags at each milestone