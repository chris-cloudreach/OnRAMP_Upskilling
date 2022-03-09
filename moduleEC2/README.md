# VPC, PRIVATE AND PUBLIC SUBNETS
This branch contains the following terraform modules

- moduleEC2: For provisioning ec2 instance within the network created using moduleVPC## Requirements


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.public_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.ec2_keypair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [tls_private_key.example](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The id of the ami for ec2 | `string` | n/a | yes |
| <a name="input_ec2_SG"></a> [ec2\_SG](#input\_ec2\_SG) | The SECURITY GROUP for ec2 | `string` | n/a | yes |
| <a name="input_ec2instancetype"></a> [ec2instancetype](#input\_ec2instancetype) | The instance type for ec2 | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name of my keypair | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region name | `string` | n/a | yes |
| <a name="input_subnet_idd"></a> [subnet\_idd](#input\_subnet\_idd) | The subnet id for ec2 | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_server_ip"></a> [public\_server\_ip](#output\_public\_server\_ip) | n/a |
