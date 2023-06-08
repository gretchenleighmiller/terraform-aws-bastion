variable "name" {
  type        = string
  description = "The name of the bastion. Used when naming resources."
  default     = "Bastion Server"
}

variable "base_tags" {
  type        = map(string)
  description = "A map of tags applied to all bastion resources."
  default     = {}
}

variable "instance_tags" {
  type        = map(string)
  description = "A map of tags applied to the bastion instance."
  default     = {}
}

variable "sg_tags" {
  type        = map(string)
  description = "A map of tags applied to the bastion Security Group."
  default     = {}
}

variable "ami_id" {
  type        = string
  description = "The ID of the bastion AMI."
}

variable "instance_type" {
  type        = string
  description = "The instance type of the bastion."
  default     = "t3.micro"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC into which the bastion is placed."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet into which the bastion is placed."
}

variable "ssh_ingress_cidr" {
  type        = string
  description = "The CIDR block from which SSH ingress is opened on the bastion's Security Group."
}

variable "ssh_port" {
  type        = string
  description = "The port on which SSH is served on the bastion."
  default     = 22
}
