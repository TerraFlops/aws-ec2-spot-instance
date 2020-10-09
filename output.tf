output "instance_id" {
  description = "The AWS instance ID of the newly launched instance"
  value = aws_instance.instance.id
}

output "instance_arn" {
  description = "The AWS ARN of the newly launched instance"
  value = aws_instance.instance.arn
}

output "instance_public_ip" {
  description = "The public IP address of the instance"
  value = aws_instance.instance.public_ip
}

output "instance_public_dns_name" {
  description = "The public DNS name of the instance"
  value = aws_instance.instance.public_dns
}

output "instance_private_ip" {
  description = "The private IP address of the instance"
  value = aws_instance.instance.private_ip
}

output "eip_public_ip" {
  description = "If an elastic IP was created this will contain its public IP address, otherwise it will be null"
  value = var.elastic_ip == true ? aws_eip.server_eip[0].public_ip : null
}

output "eip_allocation_id" {
  description = "If an elastic IP was created this will contain the EIP allocation ID, otherwise it will be null"
  value = var.elastic_ip == true ? aws_eip.server_eip[0].allocation_id : null
}