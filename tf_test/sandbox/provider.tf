terraform {
  required_version = ">= 0.12.20"
}

provider "aws" {
  region              = var.aws_region
  allowed_account_ids = var.aws_account_ids
  profile             = "default"
  version             = ">= 2.46.0"
}
