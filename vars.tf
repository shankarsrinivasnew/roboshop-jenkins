variable "s-folders" {
  default = ["Infra"]
}

variable "s-jobs" {
  default = [
    { name = "Roboshop", folder = "Infra", repo_url = "https://github.com/shankarsrinivasnew/roboshop-infra",filename = "Jenkinsfile" },
    { name = "App-deployment", folder = "Infra", repo_url = "https://github.com/shankarsrinivasnew/roboshop-ansible", filename = "Jenkinsfile-deployment" },
    { name = "helm-deployment", folder = "Infra", repo_url = "https://github.com/shankarsrinivasnew/roboshop-helm-chart.git", filename = "Jenkinsfile" },
    /* { name = "cart", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/cart" },
    { name = "catalogue", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/catalogue" },
    { name = "user", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/user" },
    { name = "payment", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/payment" },
    { name = "shipping", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/shipping" },
    { name = "dispatch", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/dispatch" },
    { name = "frontend", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/frontend" } */
  ]

}

variable "m-folders" {
  default = ["CI-pipeline-multi"]
}


variable "m-jobs" {
  default = [
    { name = "cart", folder = "CI-pipeline-multi", repo_url = "https://github.com/shankarsrinivasnew/cart" },
    { name = "catalogue", folder = "CI-pipeline-multi", repo_url = "https://github.com/shankarsrinivasnew/catalogue" },
    { name = "user", folder = "CI-pipeline-multi", repo_url = "https://github.com/shankarsrinivasnew/user" },
    { name = "payment", folder = "CI-pipeline-multi", repo_url = "https://github.com/shankarsrinivasnew/payment" },
    { name = "shipping", folder = "CI-pipeline-multi", repo_url = "https://github.com/shankarsrinivasnew/shipping" },
    { name = "dispatch", folder = "CI-pipeline-multi", repo_url = "https://github.com/shankarsrinivasnew/dispatch" },
    { name = "frontend", folder = "CI-pipeline-multi", repo_url = "https://github.com/shankarsrinivasnew/frontend" },
    { name = "aws-ssm-param-store", folder = "CI-pipeline-multi", repo_url = "https://github.com/shankarsrinivasnew/aws-ssm-param-store.git" }

  ]

}
