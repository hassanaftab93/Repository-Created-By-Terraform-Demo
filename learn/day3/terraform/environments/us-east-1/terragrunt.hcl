remote_state {
    backend = "s3"
    generate = {
        path = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }
    config = {
        bucket = "terraform-learn-hassanaftab"
        key = "us-east-1/${path_relative_to_include()}/terraform.tfstate"
        region = "us-east-1"
        encrypt = true
        profile = "default"
    }
}