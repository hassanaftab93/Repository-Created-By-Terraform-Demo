output "PublicIP" {
  value = aws_instance.web.public_ip
}

output "PrivateIP" {
  value = aws_instance.web.private_ip
}

output "sshCommand" {
  value = "ssh -i ~/.ssh/awskey ubuntu@${aws_instance.web.public_ip}"
}