variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "alias" {
  description = "Alias Name for Key"
  type        = string
}

variable "description" {
  description = "Description for Key"
  type        = string
  default     = "AMS KEY"
}

variable "deletion_window_in_days" {
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days"
  type        = number
  default     = 10
}