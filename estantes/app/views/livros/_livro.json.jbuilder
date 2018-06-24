json.extract! livro, :id, :titulo, :nome_do_autor, :data_da_publicacao, :codigo, :genero_literario, :created_at, :updated_at
json.url livro_url(livro, format: :json)
