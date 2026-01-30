# main.tf

resource "aws_instance" "vm01" {

    ami = var.ami_id
    # Challenge: use latest LTS AMI id from Amazon using data sources (data-ami.tf)
    # ami = data.aws.ami.amazon_linux_2023.id
    instance_type = var.instance_type

  
  tags = {
  Name = var.tag_name
  Owner = var.tag_owner
  }
}

#provider "aws" {
#region = "us-west-1"
#}
module "Vms_app1" {
#source = "./module/ec2-instance"
source = "git::https://github.com/tgrigsby0900-cmd/tf-cs-jan30-module//ec2-instance?ref=main"
region-1 = "us-west-1"
instance_type = "t3.micro"
subnets = ["subnet-0a413d769fe98ba0b", "subnet-043f1f8151b681cca", "subnet-04f47a3252bdf06e6"]
#Security_group = module.Security_group.op_sg_id
num_of_vm = 1
env = "dev"
}
output "vm_private_ips01" {
value = module.Vms_app1.vm_priv_pips
}