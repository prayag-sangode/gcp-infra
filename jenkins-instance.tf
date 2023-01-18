resource "google_compute_instance" "default" {
  name         = "jenkins-server-test"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Include this section to give the VM an external ip address
    }
  }

  // metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>My Demo.!</h1></body></html>' | sudo tee /var/www/html/index.html"
  //metadata_startup_script = "sudo apt-get update && sudo apt -y install default-jdk && wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add - && sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' && sudo apt-get update && sudo apt-get install jenkins -y && sudo systemctl enable --now jenkins && sudo apt -y install xrdp && sudo systemctl enable xrdp"

  // Apply the firewall rule to allow external IPs to access this instance
  tags = ["http-server"]
}
