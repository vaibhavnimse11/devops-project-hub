variable "aws_region" {
  description = "AWS region for DynamoDB"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "mydalls"
}

variable "table_name" {
  description = "DynamoDB table name (will be prefixed with project)"
  type        = string
  default     = "app-table"
}

variable "billing_mode" {
  description = "Billing mode: PAY_PER_REQUEST (on-demand) or PROVISIONED"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "partition_key" {
  description = "Primary partition key"
  type        = string
  default     = "id"
}

variable "partition_key_type" {
  description = "Partition key type (S = String, N = Number, B = Binary)"
  type        = string
  default     = "S"
}

variable "sort_key" {
  description = "Optional sort key"
  type        = string
  default     = ""
}

variable "sort_key_type" {
  description = "Sort key type (S, N, B)"
  type        = string
  default     = "S"
}

variable "read_capacity" {
  description = "Read capacity (only for PROVISIONED mode)"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "Write capacity (only for PROVISIONED mode)"
  type        = number
  default     = 5
}

variable "enable_pitr" {
  description = "Enable Point-In-Time Recovery (continuous backups)"
  type        = bool
  default     = true
}

variable "enable_ttl" {
  description = "Enable TTL (time-to-live)"
  type        = bool
  default     = false
}

variable "ttl_attribute" {
  description = "TTL attribute name"
  type        = string
  default     = "timeToExpire"
}

variable "global_secondary_indexes" {
  description = <<EOT
List of global secondary indexes. Example:
[
  {
    name            = "GSI1"
    hash_key        = "email"
    range_key       = "createdAt"
    projection_type = "ALL"
    read_capacity   = 5
    write_capacity  = 5
  }
]
EOT
  type        = list(any)
  default     = []
}

variable "tags" {
  description = "Tags for DynamoDB resources"
  type        = map(string)
  default = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
