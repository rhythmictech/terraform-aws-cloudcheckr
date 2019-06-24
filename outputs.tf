output "cloudcheckr_role_arn" {
  description = "CloudChekr role ARN"
  value       = aws_cloudformation_stack.cloudchekr.outputs.RoleArn
}

output "cloudformation_id" {
  description = "ID of cloudformation stack"
  value       = aws_cloudformation_stack.cloudchekr.id
}

