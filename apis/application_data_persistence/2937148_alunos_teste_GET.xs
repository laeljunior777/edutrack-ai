// Query all ALUNOS TESTE records
query alunos_teste verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $alunos_teste
  }

  response = $alunos_teste
}