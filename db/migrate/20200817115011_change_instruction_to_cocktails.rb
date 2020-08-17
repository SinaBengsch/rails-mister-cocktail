class ChangeInstructionToCocktails < ActiveRecord::Migration[6.0]
  def change
    change_column :cocktails, :instruction, :text
  end
end
