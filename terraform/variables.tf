variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0c7217cdde317cfec"
}

variable "key_name" {
  type = string
}

variable "server_instance_type" {
  default = "t3.medium"
}

variable "worker_instance_type" {
  default = "t3.medium"
}

variable "allowed_ssh_cidr" {
  default = "0.0.0.0/0"
}

variable "vpc_cidr" {
  default = "172.31.0.0/16"
}