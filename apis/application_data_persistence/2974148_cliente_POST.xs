// Add CLIENTE record
query cliente verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "CLIENTE"
    }
  }

  stack {
    db.add CLIENTE {
      data = {created_at: "now"}
    } as $cliente
  }

  response = $cliente
}