# Data source Information

# # Data source for HCP Packer image
# data "hcp_packer_artifact" "default-linux-webserver" {
#   bucket_name  = "default-linux-webserver"
#   channel_name = "latest"
#   platform     = "aws"
#   region       = var.region
# }

# Get AMI ID
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }
}

# Create an EC2 Instance
resource "aws_instance" "web_server_app" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type

  key_name = var.key_name
  # security_groups = var.security_groups
  vpc_security_group_ids = [
    var.security_group
  ]

  tags = {
    Name        = "${var.server}-${var.environment}"
    Type        = var.demo
    Environment = var.environment
    Owner       = var.owner

  }

  user_data = templatefile("${path.module}/user_data.sh", {
    environment   = var.environment
    region        = var.region
    owner         = var.owner
    instance_type = var.instance_type
  })
}
