#Creation of IAM User

resource "aws_iam_user" "iamuser" {
  name = "Admin_User"
  tags = {
    Description = "Team Lead"
  }

}
