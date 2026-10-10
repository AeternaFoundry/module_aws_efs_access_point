output "efs_access_points_id" {
  description = "Map of id values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => v.id if v.id != null && length(v.id) > 0 }
}
output "efs_access_points_arn" {
  description = "Map of arn values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "efs_access_points_file_system_arn" {
  description = "Map of file_system_arn values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => v.file_system_arn if v.file_system_arn != null && length(v.file_system_arn) > 0 }
}
output "efs_access_points_file_system_id" {
  description = "Map of file_system_id values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "efs_access_points_owner_id" {
  description = "Map of owner_id values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "efs_access_points_posix_user" {
  description = "Map of posix_user values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => one(v.posix_user) if v.posix_user != null && length(v.posix_user) > 0 }
}
output "efs_access_points_region" {
  description = "Map of region values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => v.region if v.region != null && length(v.region) > 0 }
}
output "efs_access_points_root_directory" {
  description = "Map of root_directory values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => one(v.root_directory) if v.root_directory != null && length(v.root_directory) > 0 }
}
output "efs_access_points_tags" {
  description = "Map of tags values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "efs_access_points_tags_all" {
  description = "Map of tags_all values across all efs_access_points, keyed the same as var.efs_access_points"
  value       = { for k, v in aws_efs_access_point.efs_access_points : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

