terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.13.0"
    }
  }
}


provider "google" {
  credentials = "/mnt/c/Users/a884992/OneDrive - Eviden/Dane/WAZNE/modern-shape-408019-a3ca4b0a6727.json"
  project     = "modern-shape-408019"
  region      = "europe-central2"
  zone        = "europe-central2-a"
}
