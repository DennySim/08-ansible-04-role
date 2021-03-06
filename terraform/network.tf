# Network
resource "yandex_vpc_network" "default" {
  name = "net-jenkins"
}

resource "yandex_vpc_subnet" "default" {
  name = "subnet"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.102.0/24"]
}
