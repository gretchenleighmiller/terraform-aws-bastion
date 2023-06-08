output "sg_id" {
  value       = aws_security_group.sg.id
  description = "The ID of the bastion Security Group."
}

output "instance_id" {
  value       = aws_instance.instance.id
  description = "The ID of the bastion EC2 instance."
}
