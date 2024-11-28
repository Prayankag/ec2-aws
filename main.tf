provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316" # Replace with your AMI ID
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.example.id
}
