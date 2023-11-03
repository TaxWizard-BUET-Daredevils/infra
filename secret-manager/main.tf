# ec2_project/main.tf
provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
}
data "terraform_remote_state" "rds" {
  backend = "s3"
  config = {
    bucket = "tax-wizard"
    key    = "rds.tfstate"
    region = "us-east-1" # Adjust for your region
  }
}


# Store RDS endpoint in Secrets Manager
resource "aws_secretsmanager_secret" "database_secret" {
  name = "database-secret"
}

resource "aws_secretsmanager_secret_version" "database_secret_version" {
  secret_id = aws_secretsmanager_secret.database_secret.id
  secret_string = jsonencode({
    db_endpoint = data.terraform_remote_state.rds.outputs.rds_endpoint
    # Add other parameters as needed
  })
}
