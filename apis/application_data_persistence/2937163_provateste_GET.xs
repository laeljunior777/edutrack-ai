// Query all ProvaTeste records
query provateste verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $provateste
  }

  response = $provateste
}