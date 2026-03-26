// Add CARTAOTOKNZD record
query cartaotoknzd verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = ""
    }
  }

  stack {
    db.add "" {
      data = {created_at: "now"}
    } as $cartaotoknzd
  }

  response = $cartaotoknzd
}