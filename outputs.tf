# outputs.tf
output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_app_subnet_ids" {
  value = aws_subnet.private_app[*].id
}

output "private_db_subnet_ids" {
  value = aws_subnet.private_db[*].id
}

output "elb_dns_name" {
  value = aws_elb.web_elb.dns_name
}

output "db_endpoint" {
  value = aws_db_instance.db.endpoint
}
