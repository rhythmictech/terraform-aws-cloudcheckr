data "aws_caller_identity" "current" {
}

locals {
  account_id = data.aws_caller_identity.current.account_id
}

variable "region" {
  type = string
}

variable "namespace" {
  type    = string
  default = ""
}

variable "owner" {
  type    = string
  default = ""
}

variable "ccExternalId" {
  type        = string
  description = "CloudCheckr External ID"
}

variable "ccExternalAccount" {
  type        = string
  description = "CloudCheckr Account"
  default     = "352813966189"
}

variable "ccSecurity" {
  type        = string
  description = "Use CloudCheckr to process security data?"
  default     = "True"
}

variable "ccInventoryAndUtilization" {
  type        = string
  description = "Use CloudCheckr to process inventory and utilization data?"
  default     = "True"
}

variable "ccCostPermissions" {
  type        = string
  description = "Use CloudCheckr to process billing data?"
  default     = "True"
}

variable "ccCloudWatchFlowLogs" {
  type        = string
  description = "Use CloudCheckr to process CloudWatch Flow Logs data?"
  default     = "True"
}

