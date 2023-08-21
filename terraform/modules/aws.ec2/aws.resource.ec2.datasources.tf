data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["${var.ownerName}"]

  filter {
    name   = "name"
    values = ["${var.imageName}"]
  }
  filter {
    name   = "root-device-type"
    values = ["${var.rootDeviceType}"]
  }
  filter {
    name   = "virtualization-type"
    values = ["${var.virtType}"]
  }
}

data "aws_ec2_instance_type" "type" {
  instance_type = var.instanceType
}