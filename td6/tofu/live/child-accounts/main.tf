provider "aws" {
  region = "us-east-2"
   profile = "management"
}

module "child_accounts" {
  source  = "brikis98/devops/book//modules/aws-organizations"
  version = "1.0.0"
  
  create_organization = true                 

  accounts = {                               
    development = "aman.ghazanfar+dev@edu.esiee.fr"
    staging     = "aman.ghazanfar+stage@edu.esiee.fr"
    production  ="aman.ghazanfar+prod@edu.esiee.fr"
  }

}