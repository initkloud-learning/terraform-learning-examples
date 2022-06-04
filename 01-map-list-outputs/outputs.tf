output "ec2-apache-public-ip" {
  value       = [for instance in aws_instance.ec2_instance: instance.public_ip]
  description = "Apache Server Public IP."
}

output "ec2-apache-public-dns" {
  value       = [for instance in aws_instance.ec2_instance: instance.public_dns]
  description = "Apache Server Public DNS."
}

# For loop with map
output "ec2-apache-public-dns-map" {
  value       = {for instance in aws_instance.ec2_instance: instance.id => instance.public_dns}
  description = "Apache Server Public DNS."
}

# For loop advance
output "ec2-apache-public-dns-map2" {
  value       = {for c, instance in aws_instance.ec2_instance: c => instance.public_dns}
  description = "Apache Server Public DNS."
}

# Latest Splat Operators
output "ec2-apache-public-dns-splat" {
  value       = aws_instance.ec2_instance[*].public_dns
  description = "Apache Server Public DNS."
}

output "ec2-apache-public-dns-splat2" {
  value       = aws_instance.ec2_instance.*.public_dns
  description = "Apache Server Public DNS."
}