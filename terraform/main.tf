provider "aws" {
  profile = "terraform-deployer"
  region  = var.region

  assume_role {
    role_arn = var.tf_deployer_role_arn
  }
}

terraform {
  backend "s3" {
    bucket         = "gazeddyw-me-tf-backend-bucket"
    key            = "gazeddyw-me.tfstate"
    encrypt        = true
    dynamodb_table = "tf-state-lock"
    profile        = "terraform-deployer"
    region         = "eu-west-2"
  }
}

data "terraform_remote_state" "gazeddyw_me" {
  backend = "s3"
  config = {
    bucket = "gazeddyw-me-tf-backend-bucket"
    key    = "gazeddyw-me.tfstate"
    region = "eu-west-2"
  }
}

module "gazeddyw_me_s3_bucket" {
  source = "./modules/gazeddyw-me-s3-bucket"
}
