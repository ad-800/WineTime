class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.string :username
      t.text :bio
      t.string :answers, array: true, default: []
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
