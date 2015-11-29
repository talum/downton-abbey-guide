class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :imdb_link
      t.string :image_url

      t.timestamps null: false
    end
  end
end
