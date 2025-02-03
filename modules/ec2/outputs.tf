output "public_ip" {
  value = [for instance in aws_instance.tf-instance : instance.public_ip]
}