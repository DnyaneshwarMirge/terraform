#LockID
terraform {
    backend "s3" {
        bucket = "batch38"
        key = "terraform.tfstate"
        dynamodb_table = "cbz38"
        region = "ap-south-1"
        profile = "configs"
        shared_credentials_files = "~/.aws/credentials"
    }
}