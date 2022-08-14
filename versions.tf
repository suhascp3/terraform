terraform {

  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
        bucket = "my-first-backend-bucket-9856472"  
        key = "backend/terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "my_dynamodb_locking_table"
        encrypt = true
    }
}