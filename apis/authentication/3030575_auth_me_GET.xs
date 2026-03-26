// Get the record belonging to the authentication token
query "auth/me" verb=GET {
  api_group = "Authentication"
  auth = "USUARIO"

  input {
  }

  stack {
    db.get USUARIO {
      field_name = "id"
      field_value = $auth.id
      output = ["id", "created_at", "name", "email", "papel_id"]
    } as $USUARIO
  }

  response = $USUARIO
}