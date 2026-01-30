terraform {
  backend "s3" {
    bucket = "tf-state-user15-290126"
    key    = "dev-cs/terraform.tfstate"
    region = "us-west-1"
    encrypt = true
   # use_lockfile = "terraform-locks-user15"
  }
}