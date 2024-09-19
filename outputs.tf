output "private_ip" {
    value = module.ec2.private_ip
}

output "public_ip" {
    value = module.ec2.public_ip
}

output "instance_id" {  #here name(id or instance_id) can be provided anything, but below value for instance id should be instance_id
    value = module.ec2.instance_id
}