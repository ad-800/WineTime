class DefaultNone < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :answers, ""
  end
end
