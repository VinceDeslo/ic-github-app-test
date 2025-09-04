resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = var.name
  }
}

variable "name" {
  type = string
  default = "example"
}

output "public_ip" {
  value = aws_instance.example.public_ip
}