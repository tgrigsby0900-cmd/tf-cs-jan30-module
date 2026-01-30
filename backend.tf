terraform {
  backend "s3" {
    bucket = "boa-terraform-state-im-jan30-user15"
    key    = "dev-cs/terraform.tfstate"
    region = "us-west-1"
    encrypt = true
    use_lockfile = "terraform-locks-user15"
  }
}