variable "environment" {
  description = "Environment name"
  type = string
  default = "dev"
}

variable "security_group_name" {
  description = "Security group name"
  type = string
}

variable "security_group_description" {
  description = "Security group description"
  type = string
  default = "Security group for EC2 instances"
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "security_group_rules" {
  description = "Security group rules"
  type = list(object({
    type        = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}