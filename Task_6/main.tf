###################  Storage Bucekt ##########################
resource "google_storage_default_object_access_control" "public_rule" {
  bucket = google_storage_bucket.dareit-bucket.name
  role   = "READER"
  entity = "allUsers"
}

resource "google_storage_bucket" "dareit-bucket" {
  name          = "paulam-dareit-cloud-bucket"
  location      = "EU"
  force_destroy = true
}

###################  Compute Instance  ##############################

resource "google_compute_instance" "dareit-instance" {
  name                = "instance-dareit-cloud"
  machine_type        = "e2-small"
  zone                = "europe-west1-b"
  deletion_protection = false

  tags = ["my-instance-challenge"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP address
    }
  }
}


###################  Cloud SQL instance  ##########################

resource "google_sql_database_instance" "dareit-sql" {
  name                = "dareit"
  database_version    = "POSTGRES_15"
  region              = "europe-west1"
  deletion_protection = false

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_user" "users" {
  name     = "dareit-user"
  instance = google_sql_database_instance.dareit-sql.name
  #   host     = "me.com"
  password = "userdareit1"
}