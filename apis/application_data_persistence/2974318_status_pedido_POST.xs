// Add STATUS_ PEDIDO record
query status_pedido verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "STATUS_ PEDIDO"
    }
  }

  stack {
    db.add "STATUS_ PEDIDO" {
      data = {created_at: "now"}
    } as $status_pedido
  }

  response = $status_pedido
}