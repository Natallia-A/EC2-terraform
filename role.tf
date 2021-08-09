resource "aws_iam_instance_profile" "admin_profile" {
  name = "admin_profile"
  role = aws_iam_role.admin_role.name
}

resource "aws_iam_role" "admin_role" {
	name = "admin_role"
	assume_role_policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
{
"Action": "sts:AssumeRole",
"Principal": {
"Service": "ec2.amazonaws.com"
},
"Effect": "Allow",
"Sid": ""
}
]
}
EOF
}

resource "aws_iam_role_policy_attachment" "admin_policy" {
    role = aws_iam_role.admin_role.name
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}