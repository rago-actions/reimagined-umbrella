terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

terraform {
  backend "s3" {

     bucket         = "tf-ibm-joey-s3-1"
     key            = "global/s3/terraform.tfstate"
     region         = "ap-south-1"
     dynamodb_table = "tf-ibm-joey-ddb"
     encrypt        = true

  }
}


resource "aws_db_instance" "example" {
  identifier_prefix   = "tf-ibm"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"

  username            = "admin"

  name                = var.db_name
  skip_final_snapshot = true

  password            = var.db_password
}

