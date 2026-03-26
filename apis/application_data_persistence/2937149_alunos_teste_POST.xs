// Add ALUNOS TESTE record
query alunos_teste verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = ""
    }
  }

  stack {
    db.add "" {
      data = {created_at: "now"}
    } as $alunos_teste
  }

  response = $alunos_teste
}