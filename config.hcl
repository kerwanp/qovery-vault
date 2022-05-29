disable_mlock = true
ui = true

listener "tcp" {
    address = "0.0.0.0:8200"
    tls_disable = "true"
}

storage "postgresql" {
    connection_url = "${DATABASE_URL}"
}