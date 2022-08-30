class ChangeToStringNotArray < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :answers, :text, array: false
  end
end
