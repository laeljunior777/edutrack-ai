// Add STATUS_TTOKENIZACAO record
query status_ttokenizacao verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "STATUS_TTOKENIZACAO"
    }
  }

  stack {
    db.add STATUS_TTOKENIZACAO {
      data = {created_at: "now"}
    } as $status_ttokenizacao
  }

  response = $status_ttokenizacao
}