// Add STATUS_CLIENTE record
query status_cliente verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "STATUS_CLIENTE"
    }
  }

  stack {
    db.add STATUS_CLIENTE {
      data = {created_at: "now"}
    } as $status_cliente
  }

  response = $status_cliente
}