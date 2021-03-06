# Connect-AzAccount #dont worry if already logedin

#check the sandbox subcriptions ID
# Get-AzSubscription
$conciergesub = Get-AzSubscription -SubscriptionName "Concierge Subscription"

$conciergesub.Id

# set the context sandbox
$context = Get-AzSubscription -SubscriptionId $conciergesub.Id
Set-AzContext $context

# set default group to the one automatically created in sandbox
# Set-AzDefault -ResourceGroupName learn-8966c842-dd73-4d69-a4a3-66739dbee752
# Set-AzDefault -ResourceGroupName learn-be51576f-624f-4fb6-9010-6fd70f3906c1
# Set-AzDefault -ResourceGroupName learn-7a9863cf-0ad4-48e7-9ea3-c5aa470bcc09
Set-AzDefault -ResourceGroupName learn-944f12c8-d2d7-45e2-a59a-27686b2e7c59