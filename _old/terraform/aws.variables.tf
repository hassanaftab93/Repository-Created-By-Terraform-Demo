variable "awsKeyName" {
  type = string
}

variable "inboundPorts" {
  type = list(number)
}

variable "awsSecurityGroupName" {
  type = string
}

variable "ownerName" {
  type = string
}

variable "imageName" {
  type = string
}

variable "rootDeviceType" {
  type = string
}

variable "virtType" {
  type = string
}

variable "region" {
  type = string
}

variable "instanceType" {
  type = string
}

variable "awsInstanceName" {
  type = string
}