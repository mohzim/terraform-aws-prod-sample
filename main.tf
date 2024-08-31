
# Call application resources module to create resources in every region
module "application-resources" {
    source = "./modules/app_resources"
    region = "ap-south-1"
}