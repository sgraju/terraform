data "aws_ami" "joindevops" {
  owners      = ["973714476881"]
  most_recent = true

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}

data "aws_instance" "redis" {
    instance_id = "i-0636abd78c85e6d97"
}

output "redis_info" {
    value = data.aws_instance.redis.public_ip
}

output "redis_info1" {
    value = data.aws_instance.redis.private_ip
}