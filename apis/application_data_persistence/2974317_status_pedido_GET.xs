// Query all STATUS_ PEDIDO records
query status_pedido verb=GET {
  api_group = "Application Data Persistence"

  input {
  }

  stack {
    db.query "STATUS_ PEDIDO" {
      return = {type: "list"}
    } as $status_pedido
  }

  response = $status_pedido
}