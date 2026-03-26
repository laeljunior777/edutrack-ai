table PRODUTO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text NOME? filters=trim
    text DESCRICAO? filters=trim
    int QDT_DISP?
    int PRECO?
    bool PRECISA_PRODUZIR?
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}