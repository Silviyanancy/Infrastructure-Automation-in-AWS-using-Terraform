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
#VPC creation
resource "aws_vpc" "demo-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "demo-vpc"
  }
}

#Subnet Creation
resource "aws_subnet" "demo-subnet" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "10.0.1.0/24"
}
