class CreateEstantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estantes do |t|
      t.string :nome
      t.string :user_id

      t.timestamps
    end
  end
end
