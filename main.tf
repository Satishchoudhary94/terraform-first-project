provider "aws" {
  region = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  description = "AMI ID for Ubuntu 22.04 in ap-south-1 (Mumbai)"
  default     = "ami-03f4878755434977f"
}

resource "aws_instance" "demo_instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "TerraformDemoInstance"
  }
}

output "instance_public_ip" {
  value = aws_instance.demo_instance.public_ip
}
