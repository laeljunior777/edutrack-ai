// Delete STATUS_ PEDIDO record.
query "status_pedido/{status_pedido_id}" verb=DELETE {
  api_group = "Application Data Persistence"

  input {
    int status_pedido_id? filters=min:1
  }

  stack {
    db.del "STATUS_ PEDIDO" {
      field_name = "id"
      field_value = $input.status_pedido_id
    }
  }

  response = null
}