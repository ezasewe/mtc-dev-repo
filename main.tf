//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/mtc-terraform-ez/compute/aws"
  version = "1.0.0"

  aws_region = "eu-west-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAxlUjt1hvAkPuzuU38gIe0UmF3d15ju3PYQsupMdybUXC7PTuP4Tsd76fAZLIHac0MKNyoi+U6EVXhBPrBsrn2V218pSMXJ2YpmDuEhDbsSTQBvIKy5LScFEx/JTNEKPquOZZBtcUQkV4SusgP9BScfLOjSkTqzpts+bqeE3UHc6OBUW0GiaQtqz8bmjqrs+rd72AIwX9VfHbh+J1FXIwp7FTjMBEl7n/5zAOlUux9CPKkOWjluuF+q/IGSnUhFuLCwLtSHr4OIPrci7g/w0gbw35nlGUfUXxIEtEBS6e75I6OjNYYsDjoyx5eftp7e+E2IT7skxey2lin9SixLgV ubuntu@ip-172-31-4-221"
  public_sg = "${module.networking.public_sg}"
  public_subnets = "${module.networking.public_subnets}"
}

module "networking" {
  source  = "app.terraform.io/mtc-terraform-ez/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "eu-west-1"
}