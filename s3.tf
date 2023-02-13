################################################################################################################################
# S3 Modules
################################################################################################################################
module "s3_prod_website_pub_bucket" {
    source = "github.com/thinkstack-co/terraform-modules//modules/aws/s3_website?ref=dev_s3_website_2023_update"
    
    # policy = file("global/s3/bucket_policies/resume_website_policy.json")
    bucket_prefix = "zachary-hill-resume"
    policy = jsonencode({
        Statement = [{
            Sid        = "PublicReadGetObject"
            Effect     = "Allow"
            Action     = [
                "s3:GetObject"
            ]
            Principal = "*"
            Resource  = "${module.s3_prod_website_pub_bucket.s3_bucket_arn}"
            }]
    })

    tags                   = {
        terraform   = "true"
        created_by  = "Zachary Hill"
        environment = "prod"
        role        = "website_bucket"
        project     = "resume"
    }
}
