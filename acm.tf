################################################################################################################################
# ACM Modules
################################################################################################################################

module "cert_zacharyhill_co" {
    source = "github.com/thinkstack-co/terraform-modules//modules/aws/acm_certificate?ref=v1.17.4"

    domain_name               = "zacharyhill.co"
    validation_method         = "DNS"
    subject_alternative_names = ["www.zacharyhill.co"]
    key_algorithm             = "EC_prime256v1"
    tags                      = {
        terraform   = "true"
        created_by  = "Zachary Hill"
        environment = "prod"
        role        = "resume website certificate"
        project     = "resume"
        }
}
