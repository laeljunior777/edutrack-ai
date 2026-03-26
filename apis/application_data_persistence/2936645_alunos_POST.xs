// Add ALUNOS record
query alunos verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = ""
    }
  }

  stack {
    db.add "" {
      data = {created_at: "now"}
    } as $alunos
  }

  response = $alunos
}