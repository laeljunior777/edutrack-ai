// Edit STATUS_ ITEM record
query "status_item/{status_item_id}" verb=PATCH {
  api_group = "Application Data Persistence"

  input {
    int status_item_id? filters=min:1
    dblink {
      table = "STATUS_ ITEM"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "STATUS_ ITEM" {
      field_name = "id"
      field_value = $input.status_item_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $status_item
  }

  response = $status_item
}