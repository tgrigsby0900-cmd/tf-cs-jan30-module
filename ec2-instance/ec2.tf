locals {
 tag_Name = "Viswa-${var.env}"
}
resource "aws_instance" "main" {
 ami = var.region_ami_map[var.region-1]
 instance_type = var.instance_type
 subnet_id = var.subnets[count.index]
 count = var.num_of_vm
 associate_public_ip_address = false
 vpc_security_group_ids = var.Web_SG01
 tags = {
 "Name" = local.tag_Name
 }
}