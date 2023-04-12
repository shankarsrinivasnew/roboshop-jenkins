variable "s-folders" {
  default = ["infra", "CI-pipeline"]
}

variable "s-jobs" {
  default = [
    { name = "roboshop", folder = "infra", repo_url = "https://github.com/shankarsrinivasnew/roboshop-infra" },
    { name = "cart", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/cart" },
    { name = "catalogue", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/catalogue" },
    { name = "user", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/user" },
    { name = "payment", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/payment" },
    { name = "shipping", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/shipping" },
    { name = "dispatch", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/dispatch" },
    { name = "frontend", folder = "CI-pipeline", repo_url = "https://github.com/shankarsrinivasnew/frontend" }

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
    { name = "dispatch", folder = "CI-pipelin-multi", repo_url = "https://github.com/shankarsrinivasnew/dispatch" },
    { name = "frontend", folder = "CI-pipeline-multi", repo_url = "https://github.com/shankarsrinivasnew/frontend" }

  ]

}
