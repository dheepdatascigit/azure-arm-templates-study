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

# Tips and Tricks
### Azure PowerShell
When you're using Azure PowerShell to deploy your resources to Azure with ARM templates, you need to be aware of a few scopes. Depending on the scope of the deployment, you use different commands to target your deployment:

- To deploy to a resource group, use New-AzResourceGroupDeployment.
- To deploy to a subscription, use New-AzSubscriptionDeployment.
- To deploy to a management group, use New-AzManagementGroupDeployment.
- To deploy to a tenant, use New-AzTenantDeployment.
In the majority of cases, you target your deployment to a resource group (which will be the focus of this module). When you need to apply policies or role assignments across a larger scope, you can target your deployment to a subscription, management group, or tenant.

### Azure CLI
The same deployment scopes exist for an Azure CLI deployment:

- deploy to a resource group, use az deployment group create.
- deploy to a subscription, use az deployment sub create.
- deploy to a management group, use az deployment mg create.
- deploy to a tenant, use az deployment tenant create.
