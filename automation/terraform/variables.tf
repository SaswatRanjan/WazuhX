variable "region" {
  description = "Cloud region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Instance size"
  type        = string
  default     = "t3.large"
}
