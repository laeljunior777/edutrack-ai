// Query all OE records
query oe verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query OE {
      return = {type: "list"}
    } as $oe
  }

  response = $oe
}