output "accept_status" {
  value       = module.vpc-peering.accept_status
  description = "The status of the VPC peering connection request."
}

output "tags" {
  value       = module.vpc-peering.tags
  description = "A mapping of tags to assign to the VPC Peering."
}

output "connection_id" {
  value       = module.vpc-peering.connection_id
  description = "The ID of the VPC peering connection, which is created only if peering is enabled (var.enable_peering = true)."
}