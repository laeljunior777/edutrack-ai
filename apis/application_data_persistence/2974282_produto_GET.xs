// Query all PRODUTO records
query produto verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query PRODUTO {
      return = {type: "list"}
    } as $produto
  }

  response = $produto
}