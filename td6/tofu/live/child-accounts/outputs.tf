# td6/tofu/live/child-accounts/outputs.tf (Example 6-2)
output "dev_role_arn" {
description = "The ARN of the IAM role you can use to manage dev from mgmt"
value = module.child_accounts.dev_role_arn
}
output "stage_role_arn" {
description = "The ARN of the IAM role you can use to manage stage from mgmt"
value = module.child_accounts.stage_role_arn
}
output "prod_role_arn" {
description = "The ARN of the IAM role you can use to manage prod from mgmt"
value = module.child_accounts.prod_role_arn
}