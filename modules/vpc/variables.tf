variable "vpc_cidr" {
  default = "10.1.0.0/16"
  type = string
}

variable "public-1a" {
  default = "10.1.0.0/24"
  type = string
}

variable "public-1b" {
  default = "10.1.1.0/24"
  type = string
}

variable "public-1c" {
  default = "10.1.2.0/24"
  type = string
}

variable "private-1a" {
  default = "10.1.3.0/24"
  type = string
}

variable "private-1b" {
  default = "10.1.4.0/24"
  type = string
}

variable "private-1c" {
  default = "10.1.5.0/24"
  type = string
}


variable "az-1a" {
    default = "ap-south-1a"
  type = string
}

variable "az-1b" {
    default = "ap-south-1b"
  type = string
}

variable "az-1c" {
    default = "ap-south-1c"
  type = string
}

