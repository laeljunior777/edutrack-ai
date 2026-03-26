table TESTORNO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int VALOR?
    int solcancelamento_id? {
      table = "SOLCANCELAMENTO"
    }
  
    int status_testorno_id? {
      table = "STATUS_TESTORNO"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}