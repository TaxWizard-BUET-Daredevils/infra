# backend.tf

terraform {
  backend "s3" {
    bucket = "tax-wizard"
    key    = "sm.tfstate"
    region = "us-east-1" # Adjust for your region
  }
}
