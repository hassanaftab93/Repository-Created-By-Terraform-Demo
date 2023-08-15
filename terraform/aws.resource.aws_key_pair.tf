resource "aws_key_pair" "awskey" {
  key_name   = "aws"
  public_key = file("~/.ssh/awskey.pub")
}