class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :player
      t.string :description
      t.integer :user_id
      t.integer :collection_id

      t.timestamps
    end
  end
end
