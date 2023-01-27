variable "aws_region" {
  description = "Define what region the instance will be deployed"
  default     = "us-east-1"
}

variable "instance_type" {
  default = ""
}
variable "env" {
  default = "staging"
}