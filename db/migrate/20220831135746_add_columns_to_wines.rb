class AddColumnsToWines < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :bitter, :integer
    add_column :wines, :fruit, :integer
    add_column :wines, :mineral, :integer
    add_column :wines, :spice, :integer
    add_column :wines, :earth, :integer
  end
end
