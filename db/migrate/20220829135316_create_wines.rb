class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.text :description
      t.float :price
      t.float :rating
      t.string :country
      t.string :region
      t.string :color
      t.string :type

      t.timestamps
    end
  end
end
