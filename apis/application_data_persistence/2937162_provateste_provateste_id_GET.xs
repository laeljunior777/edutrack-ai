// Get ProvaTeste record
query "provateste/{provateste_id}" verb=GET {
  api_group = "Application Data Persistence"

  input {
    int provateste_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.provateste_id
    } as $provateste
  
    precondition ($provateste != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $provateste
}