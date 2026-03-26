// Delete ALUNOS TESTE record.
query "alunos_teste/{alunos_teste_id}" verb=DELETE {
  api_group = "Application Data Persistence"

  input {
    int alunos_teste_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.alunos_teste_id
    }
  }

  response = null
}