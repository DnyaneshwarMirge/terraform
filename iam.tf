resource "aws_iam_user" "iamuserD" {
name = "D"
path = "/"

tags = {
  name = "D"
  }
}