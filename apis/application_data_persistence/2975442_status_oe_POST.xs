// Add STATUS_OE record
query status_oe verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "STATUS_OE"
    }
  }

  stack {
    db.add STATUS_OE {
      data = {created_at: "now"}
    } as $status_oe
  }

  response = $status_oe
}