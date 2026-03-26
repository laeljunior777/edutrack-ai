// Add TTOKENIZACAO record
query ttokenizacao verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "TTOKENIZACAO"
    }
  }

  stack {
    db.add TTOKENIZACAO {
      data = {created_at: "now"}
    } as $ttokenizacao
  }

  response = $ttokenizacao
}