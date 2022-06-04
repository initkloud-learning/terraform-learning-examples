variable "instance_ami_id" {
  description = "AWS EC2 Amazon Machine Image Id:"
  type        = string
  default     = "ami-0022f774911c1d690"
}

variable "instance_key_pair" {
  description = "AWS EC2 key pair:"
  type        = string
  default     = "terraform-learning"
}

variable "instance_type_list" {
  description = "EC2 instance Type:"
  type        = list(string)
  default     = ["t2.micro", "t2.small"]
}

variable "instance_type_map" {
  description = "EC2 Instance Type:"
  type        = map(string)
  default = {
    "dev"  = "t2.micro"
    "qa"   = "t3.small"
    "prod" = "t3.large"
  }
}