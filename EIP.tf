resource "aws_eip" "lb" {
  instance = aws_instance.Task1.id
  vpc      = true
}