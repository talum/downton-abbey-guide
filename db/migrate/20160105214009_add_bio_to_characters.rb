class AddBioToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :bio, :string
  end
end
