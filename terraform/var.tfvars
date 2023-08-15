# pass TF_VAR_token using export TF_VAR_token=$(cat ~/.ssh/aws-token) if required
region         = "us-east-1"
instanceType   = "t2.micro"
ownerName      = "099720109477"
imageName      = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
rootDeviceType = "ebs"
virtType       = "hvm"
inboundPorts   = [22, 80, 443]