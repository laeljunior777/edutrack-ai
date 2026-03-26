// Query all CEP records
query cep verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query CEP {
      return = {type: "list"}
    } as $cep
  }

  response = $cep
}