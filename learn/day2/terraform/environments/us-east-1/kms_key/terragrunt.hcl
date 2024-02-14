include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../modules/aws_kms_key"
}

inputs = {
    alias       = "alias/key"
    environment = "dev"
    description = "KMS key for development"
    deletion_window_in_days = 7
}