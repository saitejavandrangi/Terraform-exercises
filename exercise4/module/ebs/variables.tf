variable "ebs_name" {
  description = "size of the ebs volume to expand the storage of the instance"
  type        = string
}
variable "type" {
  description = "storage type for the instance"
  type        = string
}

variable "size" {
  description = "size of the ebs volume to expand the storage of the instance"
  type        = string
}
variable "availability_zone" {
  description = "AZ where the EBS volume will be created"
  type        = string
}




