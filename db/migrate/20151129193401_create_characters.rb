class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :title
      t.string :social_class
      t.integer :actor_id
      t.integer :family_id
      t.date :birthdate
      t.date :deathdate
      t.string :image_url

      t.timestamps null: false
    end
  end
end
