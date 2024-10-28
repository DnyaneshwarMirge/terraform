# profile.tf
provider "aws" {
  alias   = "test"
  region  = "ap-south-1"              # Replace with your desired region
  profile = "configs"   # Replace with the AWS CLI profile name you want to use
}