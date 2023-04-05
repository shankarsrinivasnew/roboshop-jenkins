terraform {
  required_providers {
    jenkins = {
      source = "taiidani/jenkins"
      version = "0.10.1"
    }
  }
}

provider "jenkins" {
  server_url = "http://172.31.13.80:8080"
  username   = data.jenkins_user.value
  password   = data.jenkins_password.value
}
