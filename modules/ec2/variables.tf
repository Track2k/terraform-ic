variable "ami_id" {
  description = "provide required AMI id for ec2"
  default = "ami-0d2614eafc1b0e4d2" #amazon linux 2023
}

variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
  type        = string
}

variable "allowed_ips" {
  description = "List of IPs allowed to connect to EC2"
  type        = list(string)
  default = [ "0.0.0.0/0", "49.43.240.132/32" ]
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}


