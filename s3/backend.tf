## Move this backend file to s3 when migrating state
terraform {
  backend "local" {
    path = "/Users/rgodishela/Downloads/ibm-terraform-ramesh/s3/terraform.tfstate"
  }
}

