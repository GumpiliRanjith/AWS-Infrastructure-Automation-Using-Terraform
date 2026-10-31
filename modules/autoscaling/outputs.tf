output "autoscaling_group_name" {
  value = aws_autoscaling_group.main.name
}

output "launch_template_id" {
  value = aws_launch_template.main.id
}

output "ec2_security_group_id" {
  value = aws_security_group.ec2_sg.id
}
