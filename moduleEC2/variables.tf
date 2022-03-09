variable "key_name" {
  description = "The name of my keypair"
  type        = string
}

variable "ami_id" {
  description = "The id of the ami for ec2"
  # data.aws_ami.my_aws_ami.id
  type        = string
}

variable "ec2instancetype" {
  description = "The instance type for ec2"
  type        = string
}

variable "subnet_idd" {
  description = "The subnet id for ec2"
  type        = string
}

variable "ec2_SG" {
  description = "The SECURITY GROUP for ec2"
  type        = string
}

variable "region" {
  description = "The region name"
  type        = string
}