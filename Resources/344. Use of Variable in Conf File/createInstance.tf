
resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-0b74a9291937ea965"
  instance_type = "t3.micro"

  tags = {
    Name = "demoinstance"
  }
}