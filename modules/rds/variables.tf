# filepath: /home/manjunath-p/learn-terraform/modules/rds/variables.tf
variable "private_subnet_1a" {
  description = "ID of the first private subnet"
  type        = string
  default = "module.vpc.private_subnet_1a"
}

variable "private_subnet_1b" {
  description = "ID of the second private subnet"
  type        = string
  default = "value.module.vpc.private_subnet_1b"
}

variable "private_subnet_1c" {
  description = "ID of the third private subnet"
  type        = string
  default = "module.vpc.private_subnet_1c"
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
  default = "value.module.vpc.vpc_id"
}