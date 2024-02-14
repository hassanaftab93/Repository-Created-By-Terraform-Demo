variable "aws_kms_key_environment" {
  type        = string
  description = "The environment this key is used for"
  default     = "dev"
}