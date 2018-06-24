class CreateExemplars < ActiveRecord::Migration[5.1]
  def change
    create_table :exemplars do |t|
      t.string :nome
      t.string :livro_id
      t.string :estante_id

      t.timestamps
    end
  end
end
