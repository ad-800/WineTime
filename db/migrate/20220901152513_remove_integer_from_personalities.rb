class RemoveIntegerFromPersonalities < ActiveRecord::Migration[7.0]
  def change
    remove_column :personalities, :integer
  end
end
