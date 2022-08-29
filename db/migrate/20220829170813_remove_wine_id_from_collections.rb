class RemoveWineIdFromCollections < ActiveRecord::Migration[7.0]
  def change
    remove_column :collections, :wine_id
  end
end
