resource "aws_security_group_rule" "app_sg_role" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "sg-0807c57c64dd7585a"
}