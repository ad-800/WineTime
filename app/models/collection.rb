class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :collection_wine
  has_many :wines, through: :collection_wine
end
