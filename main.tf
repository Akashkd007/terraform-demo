module "ec2_server" {
  source         = "./modules/ec2"
  ami            = "ami-0f5ee92e2d63afc18"
  instance_type  = "t2.small"
  instance_name  = "Module-EC2"
}
module "s3_bucket" {
  source = "./modules/s3"

  bucket_name        = "akash-demo-${terraform.workspace}-123456"
  environment        = terraform.workspace
  versioning_enabled = true

  tags = {
    Project = "Terraform-Demo"
    Owner   = "Akash"
  }
}

