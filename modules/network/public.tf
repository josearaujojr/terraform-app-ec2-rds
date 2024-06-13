resource "aws_subnet" "app_subnet_public_1a" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = "10.10.10.0/26"
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-subnet-pub-1a"
    }
  )
}

resource "aws_subnet" "app_subnet_public_1b" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = "10.10.10.64/26"
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-subnet-pub-1b"
    }
  )
}

resource "aws_route_table_association" "app_rt_assoc_1a" {
  subnet_id      = aws_subnet.app_subnet_public_1a.id
  route_table_id = aws_route_table.app_rt_public.id
}

resource "aws_route_table_association" "app_rt_assoc_2a" {
  subnet_id      = aws_subnet.app_subnet_public_1b.id
  route_table_id = aws_route_table.app_rt_public.id
}