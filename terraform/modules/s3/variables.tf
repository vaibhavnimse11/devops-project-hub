variable "aws_region" {
  description = "AWS region for S3"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
  default     = "mydalls"
}

variable "bucket_name" {
  description = "Name for the bucket (suffix will be added)"
  type        = string
  default     = "app-data"
}

variable "force_destroy" {
  description = "Force destroy bucket even if not empty"
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Enable versioning on the S3 bucket"
  type        = bool
  default     = true
}

variable "sse_algorithm" {
  description = "Server-side encryption algorithm (AES256 or aws:kms)"
  type        = string
  default     = "AES256"
}

variable "kms_key_id" {
  description = "KMS key ID if aws:kms is used"
  type        = string
  default     = null
}

variable "enable_lifecycle_rule" {
  description = "Enable lifecycle rule for automatic expiration"
  type        = bool
  default     = false
}

variable "lifecycle_expiration_days" {
  description = "Days after which objects expire (if lifecycle rule enabled)"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Tags for S3 bucket"
  type        = map(string)
  default = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
