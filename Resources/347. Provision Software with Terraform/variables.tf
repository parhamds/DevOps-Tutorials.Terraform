variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIA4EF4JNMSCCKVP4SG"
}

variable "AWS_SECRET_KEY" {
    default = "wQyLqUf954pVHCPoSd1pfr42+S9pW9/rFy5U86pb"
}

variable "AWS_REGION" {
default = "eu-north-1"
}

variable "Security_Group"{
    type = list
    default = ["sg-09796d5c4d9882121"]
}

variable "AMIS" {
    type = map
    default = {
        eu-north-1 = "ami-0b74a9291937ea965"
    }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "levelup_key.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}