// Get PROVA record
query "prova/{prova_id}" verb=GET {
  api_group = "Application Data Persistence"

  input {
    int prova_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.prova_id
    } as $prova
  
    precondition ($prova != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $prova
}