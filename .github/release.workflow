workflow "Release" {
  on = "release"
  resolves = ["Write GitHub Release"]
}

action "Write GitHub Release" {
  uses = "./.github/action/write_github_release"
  secrets = ["GITHUB_TOKEN"]
}
