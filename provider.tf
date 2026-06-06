terraform {
  required_version = ">= 1.7.0"

  backend "s3" {
    bucket         = "infra-versioning-state-bucket-kiran"
    key            = "infra/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile  = true
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
