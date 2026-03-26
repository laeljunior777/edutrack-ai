// Delete USUARIO record.
query "usuario/{usuario_id}" verb=DELETE {
  api_group = "Application Data Persistence"

  input {
    int usuario_id? filters=min:1
  }

  stack {
    db.del USUARIO {
      field_name = "id"
      field_value = $input.usuario_id
    }
  }

  response = null
}