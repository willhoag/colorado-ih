workflow "Build and Deploy on Push" {
  on = "push"
  resolves = [
    "Deploy"
  ]
}

action "Deploy" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  needs = ["Install Dependencies"]
  secrets = ["SURGE_TOKEN", "SURGE_LOGIN"]
  args = "run deploy"
}

action "Install Dependencies" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  runs = "yarn"
  args = "install"
}
