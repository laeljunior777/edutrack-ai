// Signup and retrieve an authentication token
query "auth/signup" verb=POST {
  api_group = "Authentication"

  input {
    text name?
    email email? filters=lower|trim
    password password?
  }

  stack {
    db.get USUARIO {
      field_name = "email"
      field_value = $input.email
    } as $USUARIO
  
    precondition ($USUARIO == null) {
      error_type = "accessdenied"
      error = "This account is already in use."
    }
  
    db.add USUARIO {
      data = {
        created_at: "now"
        name      : $input.name
        email     : $input.email
        password  : $input.password
      }
    } as $USUARIO
  
    security.create_auth_token {
      table = "USUARIO"
      extras = {}
      expiration = 86400
      id = $USUARIO.id
    } as $authToken
  }

  response = {authToken: $authToken}
}