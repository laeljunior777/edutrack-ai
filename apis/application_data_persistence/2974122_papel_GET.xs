// Query all PAPEL records
query papel verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query PAPEL {
      return = {type: "list"}
    } as $papel
  }

  response = $papel
}