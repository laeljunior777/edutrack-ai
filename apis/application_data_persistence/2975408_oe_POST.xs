// Add OE record
query oe verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "OE"
    }
  }

  stack {
    db.add OE {
      data = {created_at: "now"}
    } as $oe
  }

  response = $oe
}