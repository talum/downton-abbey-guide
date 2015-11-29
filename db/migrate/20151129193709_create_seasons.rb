class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :summary
      t.string :time_period

      t.timestamps null: false
    end
  end
end
