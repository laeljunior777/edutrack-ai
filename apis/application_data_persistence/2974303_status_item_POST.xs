// Add STATUS_ ITEM record
query status_item verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "STATUS_ ITEM"
    }
  }

  stack {
    db.add "STATUS_ ITEM" {
      data = {created_at: "now"}
    } as $status_item
  }

  response = $status_item
}