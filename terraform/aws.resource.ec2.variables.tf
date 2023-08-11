variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instanceType" {
  type    = string
  default = "t2.micro"
}

variable "aws_ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}