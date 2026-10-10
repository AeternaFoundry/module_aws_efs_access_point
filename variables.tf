variable "efs_access_points" {
  description = <<EOT
Map of efs_access_points, attributes below
Required:
    - file_system_id
Optional:
    - region
    - tags
    - tags_all
    - posix_user (block):
        - gid (required)
        - secondary_gids (optional)
        - uid (required)
    - root_directory (block):
        - creation_info (optional, block):
            - owner_gid (required)
            - owner_uid (required)
            - permissions (required)
        - path (optional)
EOT

  type = map(object({
    file_system_id = string
    region         = optional(string)
    tags           = optional(map(string))
    tags_all       = optional(map(string))
    posix_user = optional(object({
      gid            = number
      secondary_gids = optional(set(number))
      uid            = number
    }))
    root_directory = optional(object({
      creation_info = optional(object({
        owner_gid   = number
        owner_uid   = number
        permissions = string
      }))
      path = optional(string)
    }))
  }))
}

