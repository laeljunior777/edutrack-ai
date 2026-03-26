table CLIENTE {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text CPF? filters=trim
    text CELULAR? filters=trim
    text COD_VERIF? filters=trim
    int status_cliente_id? {
      table = "STATUS_CLIENTE"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}