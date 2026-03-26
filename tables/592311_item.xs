table ITEM {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int QTD?
    int VALOR_UNIT?
    int SUBTOTAL?
    int pedido_id? {
      table = "PEDIDO"
    }
  
    int produto_id? {
      table = "PRODUTO"
    }
  
    int status_item_id? {
      table = "STATUS_ ITEM"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}