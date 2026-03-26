// Add CEP record
query cep verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "CEP"
    }
  }

  stack {
    db.add CEP {
      data = {created_at: "now"}
    } as $cep
  }

  response = $cep
}