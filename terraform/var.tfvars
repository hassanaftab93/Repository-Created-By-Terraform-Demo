# pass TF_VAR_token using export TF_VAR_token=$(cat ~/.ssh/aws-token) if required
region       = "us-east-1"
instanceType = "t2.micro"
aws_ami      = "ami-053b0d53c279acc90"
inboundPorts = [22, 80, 443]