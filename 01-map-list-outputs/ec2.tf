resource "aws_instance" "ec2_instance" {
    ami = var.instance_ami_id
    # instance_type = var.instance_type_list[1] # For list
    instance_type = var.instance_type_map["dev"]
    user_data = file("${path.module}/install-apache.sh")
    key_name = var.instance_key_pair
    count = 2
    tag = {
        "Name" = "Ec2-httpd-Dev-${count.index}"
    }
}