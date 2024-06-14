output "app_subnet_public_1a" {
  value = aws_subnet.app_subnet_public_1a.id
}

output "app_subnet_public_1b" {
  value = aws_subnet.app_subnet_public_1b.id
}

output "app_vpc" {
  value = aws_vpc.app_vpc.id
}