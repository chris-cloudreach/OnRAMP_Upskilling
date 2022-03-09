data "aws_ami" "my_aws_ami" {
  
  filter {
    name   = "name"
    values = ["amzn2-ami*"]
  }
  owners = ["137112412989"]
  most_recent = true
}