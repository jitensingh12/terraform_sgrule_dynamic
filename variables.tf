variable "rule_matrix" {
  #type  = any  // not working
  #type = map(any)
  type = map(object({
    type        = string
    from_port   = string
    to_port     = string
    protocol    = string
    cidr_blocks = list(string)
  }))
  #rules = [{
  #       type = ""
  #       from_port = ""
  #       to_port = ""
  #      protocol = ""
  #     cidr_blocks = ""
  #   	}]
  #default = {}
}
