resource "aws_security_group" "example" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-a077f1d8"
  tags = {
    Name = "allow_tls"
  }

  #foreach = var.rule_matrix
  #egress {
  #  type	     = each.type
  #  from_port        = each.from_port
  #  to_port          = each.to_port
  #  protocol         = each.protocol
  #  cidr_blocks      = each.cidr_blocks
  #}
}

resource "aws_security_group_rule" "example" {
  for_each          = var.rule_matrix
  type              = each.value.type
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  security_group_id = aws_security_group.example.id
}

