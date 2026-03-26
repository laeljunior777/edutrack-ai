// Get ALUNOS TESTE record
query "alunos_teste/{alunos_teste_id}" verb=GET {
  api_group = "Application Data Persistence"

  input {
    int alunos_teste_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.alunos_teste_id
    } as $alunos_teste
  
    precondition ($alunos_teste != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $alunos_teste
}