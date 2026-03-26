// Add ProvaTeste record
query provateste verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = ""
    }
  }

  stack {
    db.add "" {
      data = {created_at: "now"}
    } as $provateste
  }

  response = $provateste
}