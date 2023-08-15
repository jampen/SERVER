# This file is used to configure our S3 Buckets


# Our the build of the server is stored in this bucket  
resource "aws_s3_bucket" "server_build" {
    bucket_prefix = "server-build"

    tags = {
        Managed_by = "Terraform"
        Project = "Minecraft-Server"
    }
}


# Archive and upload the server build as a zip file
# 

# Step 1: Archive
data "archive_file" "build_zip" {
  type        = "zip"

  # TODO:        Can these become variables?
  output_path = "${path.module}/../build.zip"
  source_dir  = "${path.module}/../build/"
}

# Step 2: Upload
resource "aws_s3_object" "build_zip" {
    bucket = aws_s3_bucket.server_build.bucket
    key = "build.zip"
    source      = data.archive_file.build_zip.output_path
    source_hash = data.archive_file.build_zip.output_base64sha256

    tags = {
        Managed_by = "Terraform"
        Project = "Minecraft-Server"
    }
}