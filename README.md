# Terraform Learning - Example with AWS
Terraform Learning:
> Terraform is a IaC(Infrastructure as a Code) tool which is used to codify the infra you are going to create/provision.

```
Basic Terraform Command:
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
terraform show
```

What this Repository consist of?
```
1. Terraform Basic Code Examples
    1. Terraform loops
    2. Terraform Meta arguments
    3. Splat
2. Terraform Modules Examples
```

Terraform Version used:
```
terraform {
    required_version = "~> 1.1.2"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.15.1"
        }
    }
}

provider "aws" {
    region = "us-east-1"
    profile = "initkloud-dev-profile-dummy"
}

```
| Attributes     | Values         |
| -------------- | -------------- |
| EC2 instance   | t2.micro       |
| AMI used       | Amazon Linux 2 |

AWS Command to get if Instanc type is supported in region or not.
```
aws ec2 describe-instance-type-offerings --location-type availability-zone \
    --filter Name=instance-type,Values=t3.micro \
        --region us-east-1 --ouput table
```

Using Terraform:

```
data "aws_ec2_instance_type_offerings" "my_inst_type" {
    filter {
        name = "instance-type"
        values = ["t3.micro"]
    }

    filter {
        name = "location"
        values = ["us-east-1"]
    }
    location_type = "availability-zone"
}
```
Organisation Information:
-------------------------------
> www.initkloud.in | © initKloud 2022
