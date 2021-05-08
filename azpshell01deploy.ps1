# Deploy the template
$templateFile = "azuredeploy.json"
$today=Get-Date -Format "dd-MM-yyyy"
$deploymentName="addnameparameter_change-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -storageAccountType Standard_LRS `
  -storageName learnexercisenew334634