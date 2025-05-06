identity_token "aws" {
  audience = ["aws.workload.identity"]
}

upstream_input "security_groups" {
  type   = "stack"
  source = "app.terraform.io/Mikes_sandbox/Terraform Stacks/sec-grp-stacks-demo"
}

// deployment "dev" {
//   inputs = {
//     regions                   = ["us-east-1"]
//     role_arn                  = "arn:aws:iam::970547352490:role/stacks-Mikes_sandbox-Terraform-Stacks"
//     identity_token            = identity_token.aws.jwt
//     default_tags              = { stacks-preview-example = "web-server-component-stack" }
//     environment               = "dev"
//     owner                     = "SE Team"
//     instance_type             = "t2.micro"
//     key_name                  = "linux-demo-kp"
//     server                    = "web-server-app-dev"
//     demo                      = "tf-stacks-demo-mike"
//     front_door_security_group = upstream_input.security_groups.front_door_security_group_id_dev
//     access_security_group     = upstream_input.security_groups.access_security_group_id_dev
//   }
// }

// deployment "prod" {
//   inputs = {
//     regions                   = ["us-west-1", "us-east-1"]
//     role_arn                  = "arn:aws:iam::970547352490:role/stacks-Mikes_sandbox-Terraform-Stacks"
//     identity_token            = identity_token.aws.jwt
//     default_tags              = { stacks-preview-example = "web-server-component-stack" }
//     environment               = "prod"
//     owner                     = "SE Team"
//     instance_type             = "t3.micro"
//     key_name                  = "linux-demo-kp"
//     server                    = "web-server-app-prod"
//     demo                      = "tf-stacks-demo-mike"
//     front_door_security_group = upstream_input.security_groups.front_door_security_group_id_prod
//     access_security_group     = upstream_input.security_groups.access_security_group_id_prod
//   }
// }

