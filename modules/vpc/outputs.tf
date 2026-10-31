output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "First subnet ID"
  value       = aws_subnet.subnet1.id
}

output "subnet2_id" {
  description = "Second subnet ID"
  value       = aws_subnet.subnet2.id
}
