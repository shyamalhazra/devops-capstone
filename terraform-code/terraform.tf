terraform {
  backend "s3" {
    bucket         = "terrform-state-backend"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}
