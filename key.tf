resource "aws_key_pair" "laptop" {
	key_name = "ec2-terraform"
	public_key = file("~/.ssh/id_rsa.pub")
}