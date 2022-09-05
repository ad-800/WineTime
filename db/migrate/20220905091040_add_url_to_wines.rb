class AddUrlToWines < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :url, :string
  end
end
