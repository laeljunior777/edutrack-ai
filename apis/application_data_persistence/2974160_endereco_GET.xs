// Query all ENDERECO records
query endereco verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query ENDERECO {
      return = {type: "list"}
    } as $endereco
  }

  response = $endereco
}