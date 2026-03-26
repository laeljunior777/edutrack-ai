// Query all CARTAOTOKNZD records
query cartaotoknzd verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $cartaotoknzd
  }

  response = $cartaotoknzd
}