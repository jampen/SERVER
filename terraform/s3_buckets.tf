# This file is used to configure our S3 Buckets


# Our the build of the server is stored in this bucket  
resource "aws_s3_bucket" "server_build" {
    bucket_prefix = "server-build"

    tags = {
        Managed_by = "Terraform"
        Project = "Minecraft-Server"
    }
}