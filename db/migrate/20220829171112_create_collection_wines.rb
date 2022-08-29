class CreateCollectionWines < ActiveRecord::Migration[7.0]
  def change
    create_table :collection_wines do |t|
      t.references :collection, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
