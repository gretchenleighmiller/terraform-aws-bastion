# --- Security Group ----------------------------------------------------------
resource "aws_security_group" "sg" {
  name        = "${local.snake_case_name}_sg"
  description = "${var.name} Security Group"
  vpc_id      = var.vpc_id

  tags = local.sg_tags
}

resource "aws_security_group_rule" "ssh_ingress" {
  type              = "ingress"
  description       = "Allow SSH ingress from specified CIDR block"
  from_port         = var.ssh_port
  to_port           = var.ssh_port
  protocol          = "tcp"
  cidr_blocks       = [var.ssh_ingress_cidr]
  security_group_id = aws_security_group.sg.id
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  description       = "Allow all egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  ipv6_cidr_blocks  = ["::/0"]
  security_group_id = aws_security_group.sg.id
}

# --- Instance ----------------------------------------------------------------
resource "aws_instance" "instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = var.subnet_id

  tags = local.instance_tags
}
