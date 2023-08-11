resource "aws_instance" "web" {
  ami                    = var.aws_ami
  instance_type          = var.instanceType
  key_name               = aws_key_pair.awskey.key_name
  vpc_security_group_ids = [aws_security_group.security_group.id]

  tags = {
    Name = "aws-first-instance-by-terraform"
  }
  user_data = file("${path.module}/user-data.sh")
}