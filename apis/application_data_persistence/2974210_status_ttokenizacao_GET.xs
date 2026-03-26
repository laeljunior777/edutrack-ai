// Query all STATUS_TTOKENIZACAO records
query status_ttokenizacao verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query STATUS_TTOKENIZACAO {
      return = {type: "list"}
    } as $status_ttokenizacao
  }

  response = $status_ttokenizacao
}