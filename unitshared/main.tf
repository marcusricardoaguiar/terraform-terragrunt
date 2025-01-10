variable "content" {}
variable "path" {}

resource "local_file" "file" {
  content  = var.content
  filename = "${var.path}/hi.txt"
}

output "content" {
  value = local_file.file.content
}

resource "google_compute_instance" "vm" {
  name         = "vm-name-${var.path}"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    
  }
}
