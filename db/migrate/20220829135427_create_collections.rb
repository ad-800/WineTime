class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
