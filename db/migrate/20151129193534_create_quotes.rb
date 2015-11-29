class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :description
      t.integer :character_id
      t.integer :episode_id

      t.timestamps null: false
    end
  end
end
