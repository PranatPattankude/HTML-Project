variable "vpc_cidr" {
  description = "cidr block for vpc"
  default = "172.20.0.0/16"
}

variable "pub_sub" {
  description = "Public Subnet"
  default = {
    cidr_block = "172.20.1.0/24"
    availability_zone = "us-east-1a"
  }
}

variable "RT_cidr" {
  description = "cidr for route table"
  default = "0.0.0.0/0"
}

variable "sg_cidr" {
  description = "cidr for securiy group for master"
  default = ["0.0.0.0/0"]
}

# for worker
variable "sg2_cidr" {
  description = "cidr for securiy group for worker"
  default = ["0.0.0.0/0"]
}

variable "ingress_port" {
  type = list(number)
  default = [ 22, 80, 8080 ]
}

# for worker
variable "ingress_port2" {
  type = list(number)
  default = [ 22, 80, 8080 ]
}

variable "egress_port" {
  type = list(number)
  default = [ 0 ]
}

# for worker
variable "egress_port2" {
  type = list(number)
  default = [ 0 ]
}