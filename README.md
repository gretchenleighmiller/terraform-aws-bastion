## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ssh_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The ID of the bastion AMI. | `string` | n/a | yes |
| <a name="input_base_tags"></a> [base\_tags](#input\_base\_tags) | A map of tags applied to all bastion resources. | `map(string)` | `{}` | no |
| <a name="input_instance_tags"></a> [instance\_tags](#input\_instance\_tags) | A map of tags applied to the bastion instance. | `map(string)` | `{}` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type of the bastion. | `string` | `"t3.micro"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the bastion. Used when naming resources. | `string` | `"Bastion Server"` | no |
| <a name="input_sg_tags"></a> [sg\_tags](#input\_sg\_tags) | A map of tags applied to the bastion Security Group. | `map(string)` | `{}` | no |
| <a name="input_ssh_ingress_cidr"></a> [ssh\_ingress\_cidr](#input\_ssh\_ingress\_cidr) | The CIDR block from which SSH ingress is opened on the bastion's Security Group. | `string` | n/a | yes |
| <a name="input_ssh_port"></a> [ssh\_port](#input\_ssh\_port) | The port on which SSH is served on the bastion. | `string` | `22` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the subnet into which the bastion is placed. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC into which the bastion is placed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The ID of the bastion EC2 instance. |
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | The ID of the bastion Security Group. |
