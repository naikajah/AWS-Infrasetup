## SUBNET RESOURCES
resource "aws_subnet" "my_subnet" {
  count             = length(var.subnet_cidr_blk) * var.layers_count
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = element(split(",", lookup(var.subnet_cidr_blk, element(data.aws_availability_zones.available.names, ceil(count.index / var.layers_count)))), count.index % var.layers_count)
  availability_zone = element(data.aws_availability_zones.available.names, ceil(count.index / var.layers_count))

  tags = {
    Name        = element(split(",", lookup(var.subnet_cidr_blk, element(data.aws_availability_zones.available.names, ceil(count.index / var.layers_count)))), count.index % var.layers_count)
    Environment = var.environment
  }
}
