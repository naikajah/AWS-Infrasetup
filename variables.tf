variable "aws_region" {
  default = "eu-west-1"
}

variable "environment" {
  type    = "string"
  default = "dev"
}

variable "vpc_cidr_blk" {
  type    = "string"
  default = "10.162.0.0/16"
}

variable "subnet_cidr_blk" {
  type    = "map"
  default = {
    "eu-west-1a" = "10.162.5.0/24,10.162.6.0/24"
    "eu-west-1b" = "10.162.7.0/24,10.162.8.0/24"
    "eu-west-1c" = "10.162.9.0/24,10.162.10.0/24"
  }
}

variable "layers_count" {
  type    = "string"
  default = "2"
}
