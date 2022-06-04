# Terraform Learning - Example with AWS
Terraform Learning
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

```
What this Repository consist of?
---------------------------------
1 - Terraform Basic Code
2 - Terraform Modules

Terraform Version used:
---------------------------------
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

|-------------------------------|
|EC2 instance   |t2.micro       |
|AMI used       |Amazon Linux 2 |

Organisation Information:
-------------------------------
> www.initkloud.in | © initKloud 2022
