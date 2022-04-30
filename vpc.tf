# https://registry.terraform.io/modules/terraform-google-modules/network/google/latest
module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 4.0"

  project_id = var.project_id

  network_name = "demo-vpc"
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.0.10.0/24"
      subnet_region = "us-west1"
      description   = "Subnet 01"
    },
    {
      subnet_name   = "subnet-02"
      subnet_ip     = "10.0.11.0/24"
      subnet_region = "us-west1"
      description   = "Subnet-02"
    }
  ]

  routes = [
    {
      name              = "eggress-internet"
      description       = "route throught IGW to access internet"
      destination_range = "0.0.0.0/0"
      tags              = "egress-inet"
      next_hop_internet = true
    }
  ]
}