terraform {
  # This configuration file is used to define the required providers and their versions.

  backend "s3" {
    bucket                  = "STATE-BUCKET-NAME"
    dynamodb_table          = "DYNAMODB-TABLE-NAME"
    key                     = "my-sample-eks-cluster/terraform.tfstate"
    region                  = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.4"
    }
  }

  required_version = "~> 1.3"
}






