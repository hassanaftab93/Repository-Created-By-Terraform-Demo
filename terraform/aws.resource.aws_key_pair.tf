resource "aws_key_pair" "awskey" {
  key_name   = var.awsKeyName
  public_key = file("~/.ssh/awskey.pub")
}