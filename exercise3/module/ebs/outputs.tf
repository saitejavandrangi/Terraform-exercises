output "ebs_volume_id" {
  description = "The ID of the EBS volume"
  value       = aws_ebs_volume.my_ebs_volume.id
}

output "ebs_volume_arn" {
  description = "The ARN of the EBS volume"
  value       = aws_ebs_volume.my_ebs_volume.arn
}

