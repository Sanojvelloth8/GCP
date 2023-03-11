provider "google" {
  project     = "infrastructure-testing-project"
  region  = "us-central1"
  zone    = "us-central1-a"
  
}

resource "google_storage_bucket" "auto-expire" {
  name          = "rehnasanoj88899"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}







