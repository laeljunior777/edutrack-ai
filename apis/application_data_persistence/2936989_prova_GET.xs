// Query all PROVA records
query prova verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $prova
  }

  response = $prova
}