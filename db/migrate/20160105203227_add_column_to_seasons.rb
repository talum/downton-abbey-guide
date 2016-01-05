class AddColumnToSeasons < ActiveRecord::Migration
  def change
    add_column :seasons, :name, :string
    add_column :seasons, :image_url, :string
  end
end
