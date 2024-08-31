
# Call application resources module to create resources in every region
module "Primary-site-app-resources" {
    source = "./modules/app_resources"
    region = "ap-south-1"
}

module "Secondary-site-app-resources" {
    source = "./modules/app_resources"
    region = "ap-southeast-1"
}