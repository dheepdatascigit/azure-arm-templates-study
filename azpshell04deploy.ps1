$parameters = @{vnetName = "VNet-001"; costCenterIO = "12345"; ownerName = "John Smith"}
$today=Get-Date -Format "dd-MM-yyyy"
$DeploymentName="DeployLocalTemplate-4-"+"$today"

New-AzResourceGroupDeployment `
    -Name $DeploymentName `
    -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-storage-account-create/azuredeploy.json