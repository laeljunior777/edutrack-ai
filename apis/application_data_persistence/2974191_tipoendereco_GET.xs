// Query all TIPOENDERECO records
query tipoendereco verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query TIPOENDERECO {
      return = {type: "list"}
    } as $tipoendereco
  }

  response = $tipoendereco
}