variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
   default = "t3.micro"
}

variable "ec2-tags" {
    type = map 
    default = { 
        Name = "terraform-demo"
        terraform = "true"
        Project = "DevSecOps"
        Environmet = "Dev"
  }
}

variable "sg_name" {
    type = string
    default = "allow-all"
    description = " Security group name to attache to EC2 instance"
}

variable "cidr_blocks" {
    type = list 
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}