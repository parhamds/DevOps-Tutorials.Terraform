resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-0b74a9291937ea965" // image: search "aws image locator" on google and file the wanted image id
  instance_type = "t3.micro"
}