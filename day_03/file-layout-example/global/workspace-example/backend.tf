terraform {
  backend "s3" {
    bucket         = "tf-ibm-day03-joey"
    key            = "workspaces-example/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "tf-ibm-day03-joey"
    encrypt        = true
  }
}
