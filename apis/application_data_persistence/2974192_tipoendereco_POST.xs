// Add TIPOENDERECO record
query tipoendereco verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "TIPOENDERECO"
    }
  }

  stack {
    db.add TIPOENDERECO {
      data = {created_at: "now"}
    } as $tipoendereco
  }

  response = $tipoendereco
}