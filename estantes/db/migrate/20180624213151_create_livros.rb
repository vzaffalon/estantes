class CreateLivros < ActiveRecord::Migration[5.1]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :nome_do_autor
      t.date :data_da_publicacao
      t.string :codigo
      t.string :genero_literario

      t.timestamps
    end
  end
end
