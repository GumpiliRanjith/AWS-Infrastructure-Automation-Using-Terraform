output "publicip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.name.public_ip
}
