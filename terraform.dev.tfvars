rule_matrix = {
  rules = {
    type        = "ingress"
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/32", "2.2.22.22/32"]
  }
  rules1 = {
    type        = "ingress"
    from_port   = "88"
    to_port     = "88"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/32"]
  }
  rules3 = {
    type        = "ingress"
    from_port   = "8080"
    to_port     = "8080"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/32"]
  }
}
    