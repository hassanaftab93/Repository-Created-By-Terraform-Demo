module "aws_key_pair_module" {
    source = "./modules/aws.keypair"
    # awsKeyName = "${var.awsKeyName}"
    
}

module "aws_security_group_module" {
    source = "./modules/aws.securitygroup"
    # inboundPorts = [ 0 ]
    # awsSecurityGroupName = "value"
    
}

module "aws_ec2_module" {
    source = "./modules/aws.ec2"
    # instanceType = "${var.instanceType}"
    # awsInstanceName = "${var.awsInstanceName}"
    # ownerName = "${var.ownerName}"
    # virtType = "${var.virtType}"
    # region = "${var.region}"
    # rootDeviceType = "${var.rootDeviceType}"
    # imageName = "${var.imageName}"
}