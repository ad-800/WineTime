class AddPersonalitiesReferenceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :personality, foreign_key: true
  end
end
