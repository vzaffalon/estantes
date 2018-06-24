class CreateResenhas < ActiveRecord::Migration[5.1]
  def change
    create_table :resenhas do |t|
      t.string :descricao
      t.string :user_id
      t.string :livro_id

      t.timestamps
    end
  end
end
