// Query all USUARIO records
query usuario verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query USUARIO {
      return = {type: "list"}
    } as $usuario
  }

  response = $usuario
}