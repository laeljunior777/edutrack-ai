// Add OP record
query op verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "OP"
    }
  }

  stack {
    db.add OP {
      data = {created_at: "now"}
    } as $op
  }

  response = $op
}