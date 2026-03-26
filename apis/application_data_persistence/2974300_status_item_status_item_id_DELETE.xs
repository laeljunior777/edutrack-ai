// Delete STATUS_ ITEM record.
query "status_item/{status_item_id}" verb=DELETE {
  api_group = "Application Data Persistence"

  input {
    int status_item_id? filters=min:1
  }

  stack {
    db.del "STATUS_ ITEM" {
      field_name = "id"
      field_value = $input.status_item_id
    }
  }

  response = null
}