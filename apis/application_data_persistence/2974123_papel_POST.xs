// Add PAPEL record
query papel verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "PAPEL"
    }
  }

  stack {
    db.add PAPEL {
      data = {created_at: "now"}
    } as $papel
  }

  response = $papel
}