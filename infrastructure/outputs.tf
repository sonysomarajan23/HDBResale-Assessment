output "vpc_id" {
  description = "ID of the HDB Resale assessment VPC"
  value       = aws_vpc.hdb_resale.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "internet_gateway_id" {
  description = "ID of the internet gateway"
  value       = aws_internet_gateway.main.id
}