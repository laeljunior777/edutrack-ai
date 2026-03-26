// Query all TESTORNO records
query testorno verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query TESTORNO {
      return = {type: "list"}
    } as $testorno
  }

  response = $testorno
}