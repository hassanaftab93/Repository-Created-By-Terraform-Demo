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

    terraform {
        extra_arguments "variables" {
            commands = get_terraform_commands_that_need_vars()

            arguments = [
                "-var-file=${get_parent_terragrunt_dir()}/local.tfvars",
            ]
        }
    }
}