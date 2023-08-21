module "aws_key_pair_module" {
  source     = "./modules/aws.keypair"
  awsKeyName = var.awsKeyName 
}

module "aws_security_group_module" {
  source               = "./modules/aws.securitygroup"
  inboundPorts         = var.inboundPorts
  awsSecurityGroupName = var.awsSecurityGroupName
}

module "aws_ec2_module" {
  source          = "./modules/aws.ec2"
  key_name        = module.aws_key_pair_module.keyName
  securityGroupID = module.aws_security_group_module.securityGroupID
  instanceType    = var.instanceType
  awsInstanceName = var.awsInstanceName
  ownerName       = var.ownerName
  virtType        = var.virtType
  region          = var.region
  rootDeviceType  = var.rootDeviceType
  imageName       = var.imageName
}