table PEDIDO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int TOTAL?
    text NFC_E? filters=trim
    text COD_ENTREGA? filters=trim
    int status_pedido_id? {
      table = "STATUS_ PEDIDO"
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