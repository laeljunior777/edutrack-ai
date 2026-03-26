// Delete ProvaTeste record.
query "provateste/{provateste_id}" verb=DELETE {
  api_group = "Application Data Persistence"

  input {
    int provateste_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.provateste_id
    }
  }

  response = null
}