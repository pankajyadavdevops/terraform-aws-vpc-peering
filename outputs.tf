output "connection_id" {
  value       = join("", aws_vpc_peering_connection.default[*].id)
  description = "VPC peering connection ID."
}

output "accept_status" {
  value       = join("", aws_vpc_peering_connection.default[*].accept_status)
  description = "The status of the VPC peering connection request."
}

output "tags" {
  value       = module.labels.tags
  description = "A mapping of tags to assign to the resource."
}

output "vpc_peering_connection_id" {
  value       = aws_vpc_peering_connection.default[0].id
  description = "The ID of the VPC peering connection created between two VPCs."
}

output "acceptor_routes" {
  value       = aws_route.acceptor[*].route_table_id
  description = "The route table IDs associated with the acceptor VPC in the VPC peering connection."
}

output "requestor_routes" {
  value       = aws_route.requestor[*].route_table_id
  description = "The route table IDs associated with the requester VPC in the VPC peering connection."
}