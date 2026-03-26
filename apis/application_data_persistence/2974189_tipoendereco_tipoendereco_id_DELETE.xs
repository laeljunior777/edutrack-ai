// Delete TIPOENDERECO record.
query "tipoendereco/{tipoendereco_id}" verb=DELETE {
  api_group = "Application Data Persistence"

  input {
    int tipoendereco_id? filters=min:1
  }

  stack {
    db.del TIPOENDERECO {
      field_name = "id"
      field_value = $input.tipoendereco_id
    }
  }

  response = null
}