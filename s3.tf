################################################################################################################################
# S3 Modules
################################################################################################################################
module "s3_prod_website_pub_bucket" {
    source = "github.com/thinkstack-co/terraform-modules//modules/aws/s3_website?ref=v1.17.2"
    
    policy = file("global/s3/bucket_policies/resume_website_policy.json")
    bucket_prefix = "zachary-hill-resume"
    region = "us-east-1"
    acl    = "public-read"

    tags                   = {
        terraform   = "yes"
        created_by  = "terraform"
        environment = "prod"
        role        = "website_bucket"
    }
}
