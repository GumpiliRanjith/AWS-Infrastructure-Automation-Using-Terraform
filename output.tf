
output "alb_dns_name" {
  description = "Application Load Balancer DNS"
  value       = module.alb.alb_dns_name
}

output "autoscaling_group_name" {
  description = "Auto Scaling Group name"
  value       = module.autoscaling.autoscaling_group_name
}

output "launch_template_id" {
  description = "Launch Template ID"
  value       = module.autoscaling.launch_template_id
}
