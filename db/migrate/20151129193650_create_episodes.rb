class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :name
      t.string :summary
      t.integer :season_id

      t.timestamps null: false
    end
  end
end
