resource "aws_vpc" "curso_terraform_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform"
  }
}

resource "aws_subnet" "curso_terraform_subnet" {
  count = 3

  vpc_id     = aws_vpc.curso_terraform_vpc.id
  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    Name = "subnet-terraform-${count.index}"
  }
}
