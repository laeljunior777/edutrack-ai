// Add TESTORNO record
query testorno verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "TESTORNO"
    }
  }

  stack {
    db.add TESTORNO {
      data = {created_at: "now"}
    } as $testorno
  }

  response = $testorno
}