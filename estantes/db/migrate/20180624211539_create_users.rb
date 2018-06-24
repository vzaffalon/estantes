class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :apelido
      t.string :telefone
      t.string :senha

      t.timestamps
    end
  end
end
