variable "vpc_cidr" {
  description= "The cidr of my vpc"
  type = string
}

variable "vpc_name" {
  description= "The name of my vpc"
  type = string
}
variable "IG_name" {
  description= "The name of my IGW"
  type = string
}
variable "public_a_cidr" {
  description= "The cidr of my public a subnet"
  type = string
}

variable "region" {
  description= "The region name"
  type = string
}

# PRIVATE VARIABLE

variable "private_a_cidr" {
  description= "The cidr of my public a subnet"
  type = string
}