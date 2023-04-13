
// single branch pipelines

resource "jenkins_folder" "s-foldersr" {
  count = length(var.s-folders)
  name  = element(var.s-folders, count.index)
}

resource "jenkins_job" "s-jobr" {
  depends_on = [jenkins_folder.s-foldersr]

  count = length(var.s-jobs)

  name   = lookup(element(var.s-jobs, count.index), "name", null)
  folder = "/job/${lookup(element(var.s-jobs, count.index), "folder", null)}"

  template = templatefile("${path.module}/sn-job.xml", {
    repo_url = lookup(element(var.s-jobs, count.index), "repo_url", null)
    name     = lookup(element(var.s-jobs, count.index), "name", null)
  })
  lifecycle {
    ignore_changes = [template]
  }
}

// Multi branch pipelines

resource "jenkins_folder" "m-foldersr" {
  count = length(var.m-folders)
  name  = element(var.m-folders, count.index)
}

resource "jenkins_job" "m-jobr" {
  depends_on = [jenkins_folder.m-foldersr]

  count = length(var.m-jobs)

  name   = lookup(element(var.m-jobs, count.index), "name", null)
  folder = "/job/${lookup(element(var.m-jobs, count.index), "folder", null)}"

  template = templatefile("${path.module}/mb-job.xml", {
    repo_url = lookup(element(var.m-jobs, count.index), "repo_url", null)
    name     = lookup(element(var.m-jobs, count.index), "name", null)
  })
  lifecycle {
    ignore_changes = [template]
  }
}

// Jenkins R53 Record for jenkins

resource "aws_route53_record" "jenkinsr" {
  zone_id = "Z0607165JC9NKEPWSMH2"
  name    = "jenkins.sstech.store"
  type    = "A"
  ttl     = 30
  records = [data.aws_instance.jenkins.public_ip]
}

// Jenkins R53 Record for sonarcube on port 9000
resource "aws_route53_record" "sonarcuber" {
  zone_id = "Z0607165JC9NKEPWSMH2"
  name    = "sonarcube.sstech.store"
  type    = "A"
  ttl     = 30
  records = [data.aws_instance.sonarcube.public_ip]
}

// Jenkins R53 Record for nexus on port 8081

resource "aws_route53_record" "nexusr" {
  zone_id = "Z0607165JC9NKEPWSMH2"
  name    = "nexus.sstech.store"
  type    = "A"
  ttl     = 30
  records = [data.aws_instance.nexus.public_ip]
}