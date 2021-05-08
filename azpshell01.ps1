# Connect-AzAccount #dont worry if already logedin

#check the sandbox subcriptions ID
# Get-AzSubscription
$conciergesub = Get-AzSubscription -SubscriptionName "Concierge Subscription"

$conciergesub.Id

# set the context sandbox
$context = Get-AzSubscription -SubscriptionId $conciergesub.Id
Set-AzContext $context

# set default group to the one automatically created in sandbox
Set-AzDefault -ResourceGroupName learn-8966c842-dd73-4d69-a4a3-66739dbee752

# Deploy the template
$templateFile = "azuredeploy.json"
$today=Get-Date -Format "dd-MM-yyyy"
$deploymentName="blanktemplate-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile