# VPC, PRIVATE AND PUBLIC SUBNETS
This branch contains the following terraform modules
- moduleVPC: For building a network containing vpc, private     subnets (with a route to IGW), public subnets (no route to IGW).


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.nat_a_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.NAT_public_subnet_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.igw_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.nat_route_private_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.igw_public_a_cidr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.nat_public_a_cidr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.ICMP_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.private_a_cidr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_a_cidr](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_IG_name"></a> [IG\_name](#input\_IG\_name) | The name of my IGW | `string` | n/a | yes |
| <a name="input_private_a_cidr"></a> [private\_a\_cidr](#input\_private\_a\_cidr) | The cidr of my public a subnet | `string` | n/a | yes |
| <a name="input_public_a_cidr"></a> [public\_a\_cidr](#input\_public\_a\_cidr) | The cidr of my public a subnet | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region name | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The cidr of my vpc | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of my vpc | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_SG_id"></a> [SG\_id](#output\_SG\_id) | n/a |
| <a name="output_my_vpc_id"></a> [my\_vpc\_id](#output\_my\_vpc\_id) | n/a |
| <a name="output_private_subnet_a_id"></a> [private\_subnet\_a\_id](#output\_private\_subnet\_a\_id) | n/a |
| <a name="output_public_subnet_a_id"></a> [public\_subnet\_a\_id](#output\_public\_subnet\_a\_id) | n/a |
