class RenameTypeToWineType < ActiveRecord::Migration[7.0]
  def change
    rename_column :wines, :type, :wine_type
  end
end
