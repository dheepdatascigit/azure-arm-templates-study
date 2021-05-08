# Deploy the template
$templateFile = "azuredeploy.json"
$today=Get-Date -Format "dd-MM-yyyy"
$deploymentName="updateTags-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -storagePrefix mystrg01 `
  -storageSKU Standard_LRS