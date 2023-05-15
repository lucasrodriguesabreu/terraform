resource "aws_security_group" "securitygroupssheweb" {
  name        = "Libera o acesso SSH e Web"
  description = "Libera o acesso SSH e Web na porta 8080"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
