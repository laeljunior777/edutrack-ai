// Add USUARIO record
query usuario verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "USUARIO"
    }
  }

  stack {
    db.add USUARIO {
      data = {created_at: "now"}
    } as $usuario
  }

  response = $usuario
}