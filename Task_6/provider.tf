provider "google" {
  credentials = file("cloudchallenge-key.json")

  project = "cloudchallenge-401416"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}