
provider "aws" {
  region = "eu-west-1"
}

module "child_accounts" {
  source = "github.com/ZedRoff/devops-base//td6/tofu/modules/aws-organization"

  create_organization = true

  dev_account_email   = "aman.ghazanfar+dev@edu.esiee.fr"
  stage_account_email = "aman.ghazanfar+stage@edu.esiee.fr"
  prod_account_email  = "aman.ghazanfar+prod@edu.esiee.fr"
}
