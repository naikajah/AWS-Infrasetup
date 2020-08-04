## VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_blk

  tags = {
    Name        = var.vpc_cidr_blk
    Environment = var.environment
  }
}

## MAIN ROUTE TABLE ASSCOIATION to VPC
resource "aws_main_route_table_association" "vpc_main_route_table" {
  vpc_id         = aws_vpc.my_vpc.id
  route_table_id = aws_route_table.my_route_table.id
}
