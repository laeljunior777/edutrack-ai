table SOLCANCELAMENTO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text MOTIVO? filters=trim
    int pedido_id? {
      table = "PEDIDO"
    }
  
    int status_solcancelamento_id? {
      table = "STATUS_SOLCANCELAMENTO"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}