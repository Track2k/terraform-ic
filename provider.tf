# provider.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    profile      = "<PROFILE_NAME>"
    bucket       = "<BUCKET_NAME>"
    key          = "terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }

}
provider "aws" {
  region  = "ap-south-1"
  profile = "<PROFILE_NAME>"
}
