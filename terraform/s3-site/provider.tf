provider "aws" {
  region  = local.region
}

provider "aws" {
  region  = "us-east-1"
  alias   = "us-east-1"
}

terraform {
  required_version = "~> 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.6.2"
    }
  }
}
terraform {
  backend "s3" {
  bucket = "pokusaj"
  key = "terraform/s3-site"
  region = "us-east-1"
}
}
