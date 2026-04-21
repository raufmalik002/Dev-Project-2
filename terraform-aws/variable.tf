variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
variable "image_name" {
  type = string
}
variable "ports" {
  type = list(number)
}
variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}