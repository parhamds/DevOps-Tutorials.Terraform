
data "aws_availability_zones" "avilable" {}

resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-0b74a9291937ea965"
  instance_type = "t3.micro"
  availability_zone = data.aws_availability_zones.avilable.names[0]

  provisioner "local-exec" {
    command = "echo ${aws_instance.MyFirstInstnace.private_ip} >> my_private_ips.txt"
  }

  tags = {
    Name = "custom_instance"
  }
}

output "public_ip" {
  value = aws_instance.MyFirstInstnace.public_ip 
}