resource "random_id" "bucket" {
  byte_length = 4
}

resource "google_storage_bucket" "tf_bucket" {
  name          = "terraform-state-${random_id.bucket.hex}"
  location      = "US"
  force_destroy = true
}
