class CreatePersonalities < ActiveRecord::Migration[7.0]
  def change
    create_table :personalities do |t|
      t.integer :type
      t.text :description
      t.string :flavor_profile
      t.integer :wines, :integer, array: true, default: []

      t.timestamps
    end
  end
end
