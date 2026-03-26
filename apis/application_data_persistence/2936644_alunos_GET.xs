// Query all ALUNOS records
query alunos verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $alunos
  }

  response = $alunos
}