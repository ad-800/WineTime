class Collection < ApplicationRecord
  belongs_to :user
  has_many :collection_wines
  has_many :wines, through: :collection_wines
end
