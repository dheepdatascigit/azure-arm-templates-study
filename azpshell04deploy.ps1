$parameters = @{vnetName = "VNet-001"; costCenterIO = "12345"; ownerName = "John Smith"}
$templateFile=".\JSON\maintemplate.json"
$today=Get-Date -Format "dd-MM-yyyy"
$DeploymentName="DeployLocalTemplate-"+"$today"

New-AzResourceGroupDeployment `
-Name $DeploymentName `
-TemplateFile $templateFile `
-TemplateParameterObject $parameters
