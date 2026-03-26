// Add SOLCANCELAMENTO record
query solcancelamento verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "SOLCANCELAMENTO"
    }
  }

  stack {
    db.add SOLCANCELAMENTO {
      data = {created_at: "now"}
    } as $solcancelamento
  }

  response = $solcancelamento
}