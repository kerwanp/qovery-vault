disable_mlock = true
ui = true

storage "postgresql" {
    connection_url = "${DATABASE_URL}"
}