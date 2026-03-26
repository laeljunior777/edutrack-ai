// Add ITEM record
query item verb=POST {
  api_group = "Application Data Persistence"

  input {
    dblink {
      table = "ITEM"
    }
  }

  stack {
    db.add ITEM {
      data = {created_at: "now"}
    } as $item
  }

  response = $item
}