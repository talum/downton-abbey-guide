class CreateSpouses < ActiveRecord::Migration
  def change
    create_table :spouses do |t|
      t.integer :character_id
      t.integer :character_id

      t.timestamps null: false
    end
  end
end
