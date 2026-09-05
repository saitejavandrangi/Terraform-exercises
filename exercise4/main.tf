module "web01" {
  source = "./module/EC2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  instance_name  = "web01"
  security_group = var.security_group
  environment    = var.environment
}


module "web02" {
  source = "./module/EC2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  instance_name  = "web02"
  security_group = var.security_group
  environment    = var.environment

}



module "s3" {
  source      = "./module/S3"
  bucket_name = var.bucket_name
}

module "ebs" {
  source            = "./module/ebs"
  availability_zone = module.web01.instance_az
  size              = var.size
  ebs_name          = var.ebs_name
  type              = var.type
}
