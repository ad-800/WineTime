class RenameTypeToPersonalityType < ActiveRecord::Migration[7.0]
  def change
    rename_column :personalities, :type, :personality_type
  end
end
