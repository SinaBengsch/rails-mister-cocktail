class AddAlcoholToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :alcohol, :boolean
  end
end
