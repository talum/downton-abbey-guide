class AddColumnToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :context, :string
  end
end
