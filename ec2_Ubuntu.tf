resource "aws_instance" "Task1" {
  ami                         = "ami-0133407e358cc1af0"
  instance_type               = "t2.micro"
  iam_instance_profile        = aws_iam_instance_profile.admin_profile.name
  key_name                    = aws_key_pair.laptop.key_name
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  tags = {
    "Name" = "Task"
  }
}