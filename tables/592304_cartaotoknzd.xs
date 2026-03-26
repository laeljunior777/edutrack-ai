table CARTAOTOKNZD {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    decimal NRO?
    text TOKEN? filters=trim
    int cliente_id? {
      table = "CLIENTE"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}