resource "google_compute_instance" "control-plane" {
  name         = "control-plane"
  machine_type = "e2-standard-2"
  zone         = "europe-central2-a"  

  scheduling {
    preemptible = true
    automatic_restart = false
  }

  boot_disk {
    initialize_params {
      image = "rocky-linux-8-optimized-gcp-v20240111"
    }
  }

  network_interface {
    network = "default"
   #  access_config {
      # // Ephemeral IP
    # }
  }

  metadata = {
    user-data = var.path_cloud_init_iso
  }
}
