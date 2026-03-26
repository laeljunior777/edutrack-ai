// Query all TTOKENIZACAO records
query ttokenizacao verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query TTOKENIZACAO {
      return = {type: "list"}
    } as $ttokenizacao
  }

  response = $ttokenizacao
}