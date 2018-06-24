json.extract! user, :id, :nome, :apelido, :telefone, :senha, :created_at, :updated_at
json.url user_url(user, format: :json)
