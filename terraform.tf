terraform {
    required_version = "~> 1.1.2" #~> Sign allow you to use current of latest minor version (last bit)
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.15.1"
        }
    }
}

