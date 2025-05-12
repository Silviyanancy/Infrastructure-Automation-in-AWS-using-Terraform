#Creation of IAM User
resource "aws_iam_user" "iamuser" {
  name = "Admin_User"
  tags = {
    Description = "Team Lead"
  }
}

#Create Administrator policy
resource "aws_iam_policy" "admin-user" {
  name   = "Admin_User"
  policy = <<EOF
        {
            "Version": "2012-10-17",
            "Statement": [
                {
                    "Effect": "Allow",
                    "Action": "*",
                    "Resource": "*"
                }
            ]
        }
    
    EOF

}

# Attaching policy to the admin-user
resource "aws_iam_user_policy_attachment" "admin-access" {
  user       = aws_iam_user.iamuser.name
  policy_arn = aws_iam_policy.admin-user.arn

}
