// Add PROVA record
query prova verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = ""
    }
  }

  stack {
    db.add "" {
      data = {created_at: "now"}
    } as $prova
  }

  response = $prova
}