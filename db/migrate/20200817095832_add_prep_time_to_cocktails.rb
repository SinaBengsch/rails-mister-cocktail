class AddPrepTimeToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :prep_time, :integer
  end
end
