terraform {
  backend "s3" {
    bucket = "saiteja-exercise3-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
