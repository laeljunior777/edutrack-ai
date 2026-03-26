table TTOKENIZACAO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text DET_CARTAO_ENCRIPT? filters=trim
    int status_ttokenizacao_id? {
      table = "STATUS_TTOKENIZACAO"
    }
  
    int cliente_id? {
      table = "CLIENTE"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}