module "ec2_server" {
  source         = "./modules/ec2"
  ami            = "ami-0f5ee92e2d63afc18"
  instance_type  = "t2.small"
  instance_name  = "Module-EC2"
}



