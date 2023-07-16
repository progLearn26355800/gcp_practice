terraform {
  backend "gcs" {
    bucket      = "tf-state-test-terraform"
    prefix      = "terraform/state/network"
    credentials = "../../clean-feat-392921-a920f1e32f8e.json"
  }
}
