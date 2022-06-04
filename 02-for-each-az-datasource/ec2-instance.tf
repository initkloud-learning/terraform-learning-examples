data "aws_availability_zones" "ec2_azs" {
    filter {
        name = ""
    }
}