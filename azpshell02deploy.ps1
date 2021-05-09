# New-AzResourceGroupDeployment `
#  -TemplateUri "https://raw.githubusercontent.com/Azure/azure-docs-json-samples/master/azure-resource-manager/what-if/what-if-before.json"

# New-AzResourceGroupDeployment `
#  -Whatif `
#  -TemplateUri "https://raw.githubusercontent.com/Azure/azure-docs-json-samples/master/azure-resource-manager/what-if/what-if-after.json"

# Deploy by using complete mode and the confirmation option
# In these next steps, you'll deploy an empty template over your existing environment.

New-AzResourceGroupDeployment `
  -Mode Complete `
  -Confirm `
  -TemplateUri "https://raw.githubusercontent.com/Azure/azure-docs-json-samples/master/empty-template/azuredeploy.json"