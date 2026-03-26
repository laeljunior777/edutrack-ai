table ENDERECO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text LOGRADOURO? filters=trim
    text NUMERO? filters=trim
    text COMPLEMENTO? filters=trim
    text REFERENCIA? filters=trim
    int cliente_id? {
      table = "CLIENTE"
    }
  
    int tipoendereco_id? {
      table = "TIPOENDERECO"
    }
  
    int cep_id? {
      table = "CEP"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}