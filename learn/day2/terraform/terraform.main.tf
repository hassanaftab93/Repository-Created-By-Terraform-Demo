module "aws_kms_key" {
  source      = "./modules/aws_kms_key"
  alias       = "alias/key"
  environment = var.aws_kms_key_environment
}