resource "aws_ebs_volume" "my_ebs_volume" {
  availability_zone  = var.availability_zone
  type              = var.type
  size              = var.size

  tags = {
    Name = var.ebs_name
    Environment = "dev"
  }
}

