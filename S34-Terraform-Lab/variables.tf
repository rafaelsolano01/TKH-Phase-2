variable "aws_region" {
  description = "AWS Region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "my_home_ip" {
  description = "Specific home IP address for SSH access (CIDR notation)"
  type        = string
  default     = "24.146.146.222/32"
}
