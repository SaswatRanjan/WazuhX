provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

resource "google_compute_instance" "wazuh_manager" {
  name         = "wazuhx-manager"
  machine_type = "e2-standard-2"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }
}
