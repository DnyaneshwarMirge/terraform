provider "aws" {
  access_key = ""
  secret_key = ""
}


resource "aws_iam_user" "iamuserratnadeep" {
  name = "ratnadeep"
  path = "/"

  tags = {
    name = "ratnadeep"
  }
}