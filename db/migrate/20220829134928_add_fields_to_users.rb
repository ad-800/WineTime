class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :answers, :string, array: true, default: []
  end
end
