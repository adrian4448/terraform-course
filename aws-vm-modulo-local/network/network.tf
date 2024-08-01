resource "aws_vpc" "curso_terraform_vpc" {
  cidr_block = var.cidr_vpc

  tags = {
    Name = "vpc-${var.enviroment}"
  }
}

resource "aws_subnet" "curso_terraform_subnet" {
  vpc_id     = aws_vpc.curso_terraform_vpc.id
  cidr_block = var.cidr_subnet

  tags = {
    Name = "subnet-${var.enviroment}"
  }
}

resource "aws_internet_gateway" "curso_terraform_gateway" {
  vpc_id = aws_vpc.curso_terraform_vpc.id

  tags = {
    Name = "internet-gateway-${var.enviroment}"
  }
}

resource "aws_route_table" "curso_terraform_route_table" {
  vpc_id = aws_vpc.curso_terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.curso_terraform_gateway.id
  }

  tags = {
    Name = "route-table-${var.enviroment}"
  }
}

resource "aws_route_table_association" "curso_terraform_rta" {
  subnet_id      = aws_subnet.curso_terraform_subnet.id
  route_table_id = aws_route_table.curso_terraform_route_table.id
}

resource "aws_security_group" "curso_terraform_security_group" {
  name        = "security-group-terraform"
  description = "Permitir acesso na porta 22"
  vpc_id      = aws_vpc.curso_terraform_vpc.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "security-group-${var.enviroment}"
  }
}