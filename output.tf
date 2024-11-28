output "ec2_instance_public_ip" {
  value = aws_instance.example.public_ip
}
