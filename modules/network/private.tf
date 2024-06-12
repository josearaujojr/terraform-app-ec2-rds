resource "aws_subnet" "app_subnet_private_1c" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = "10.10.10.128/26"
  availability_zone = "${data.aws_region.current.name}c"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-subnet-private-1c"
    }
  )
}

resource "aws_subnet" "app_subnet_private_1d" {
  vpc_id            = aws_vpc.app_vpc.id
  cidr_block        = "10.10.10.192/26"
  availability_zone = "${data.aws_region.current.name}d"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-subnet-private-1d"
    }
  )
}