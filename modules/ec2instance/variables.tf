variable "ami_value" {
  description = "enter ami_value"
  type        = string
}
variable "instance_type" {
  default = "enter instance_type"
  type    = string

}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be deployed"
  type        = string
}
