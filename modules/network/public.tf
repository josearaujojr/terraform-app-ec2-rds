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