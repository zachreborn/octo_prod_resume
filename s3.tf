################################################################################################################################
# S3 Modules
################################################################################################################################
module "zacharyhill_prod_resume_website" {
    source = "github.com/thinkstack-co/terraform-modules//modules/aws/s3_website?ref=dev_s3_website_2023_update"
    
    policy = file("global/s3/bucket_policies/resume_website_policy.json")
    bucket = "zacharyhill.co"

    tags   = {
        terraform   = "true"
        created_by  = "Zachary Hill"
        environment = "prod"
        role        = "website_bucket"
        project     = "resume"
    }
}

module "zacharyhill_dev_resume_website" {
    source = "github.com/thinkstack-co/terraform-modules//modules/aws/s3_website?ref=dev_s3_website_2023_update"
    
    policy = file("global/s3/bucket_policies/resume_website_policy.json")
    bucket = "dev.zacharyhill.co"

    tags   = {
        terraform   = "true"
        created_by  = "Zachary Hill"
        environment = "dev"
        role        = "website_bucket"
        project     = "resume"
    }
}
