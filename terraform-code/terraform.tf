terraform {
  backend "s3" {
    bucket         = "angelo-terraform-state-backend"
    key            = "terraform.tfstate"
    region         = "eu-east-1"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}
