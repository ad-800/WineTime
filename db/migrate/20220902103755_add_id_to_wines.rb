class AddIdToWines < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :wine_unique_id, :integer
  end
end
