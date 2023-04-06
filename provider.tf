terraform {
  required_providers {
    jenkins = {
      source  = "taiidani/jenkins"
      version = "0.10.1"
    }
  }
}

provider "jenkins" {
  server_url = "http://172.31.10.184:8080"
  username   = data.aws_ssm_parameter.jenkins_user.value
  password   = data.aws_ssm_parameter.jenkins_pass.value
}
