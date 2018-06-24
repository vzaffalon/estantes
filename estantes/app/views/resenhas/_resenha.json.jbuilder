json.extract! resenha, :id, :descricao, :user_id, :livro_id, :created_at, :updated_at
json.url resenha_url(resenha, format: :json)
