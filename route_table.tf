## ROUTE TABLE
resource "aws_route_table" "my_route_table" {
  vpc_id = "${aws_vpc.my_vpc.id}"

  tags {
    Name        =  "${var.vpc_cidr_blk}-RouteTable"
    Environment = "${var.environment}"
  }
}

