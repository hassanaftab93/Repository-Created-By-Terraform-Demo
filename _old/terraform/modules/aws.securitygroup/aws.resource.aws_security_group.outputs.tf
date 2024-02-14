output "securityGroupName" {
  value = aws_security_group.security_group.name
}

output "securityGroupID" {
  value = aws_security_group.security_group.id
}

output "securityGroupIngress" {
  value = aws_security_group.security_group.ingress
}