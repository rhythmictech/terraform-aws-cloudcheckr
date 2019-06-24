resource "aws_cloudformation_stack" "cloudchekr" {
  name          = "cloudchekr"
  template_body = file("${path.module}/cloudformation.json")

  parameters = {
    ExternalId             = var.ccExternalId
    ExternalAccount        = var.ccExternalAccount
    Security               = var.ccSecurity
    InventoryAndUtilzation = var.ccInventoryAndUtilization
    CostPermissions        = var.ccCostPermissions
    BillingBucket          = aws_s3_bucket.billing_bucket.id
    CurBucket              = aws_s3_bucket.cur_bucket.id
    CloudTrailBucket       = aws_s3_bucket.cloudtrail_bucket.id
    CloudWatchFlowLogs     = var.ccCloudWatchFlowLogs
  }

  capabilities = [
    "CAPABILITY_IAM",
  ]
}

