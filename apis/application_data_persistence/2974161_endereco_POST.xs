// Add ENDERECO record
query endereco verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "ENDERECO"
    }
  }

  stack {
    db.add ENDERECO {
      data = {created_at: "now"}
    } as $endereco
  }

  response = $endereco
}