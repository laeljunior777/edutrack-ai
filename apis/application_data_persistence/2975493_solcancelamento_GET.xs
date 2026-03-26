// Query all SOLCANCELAMENTO records
query solcancelamento verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query SOLCANCELAMENTO {
      return = {type: "list"}
    } as $solcancelamento
  }

  response = $solcancelamento
}