class Collection < ApplicationRecord
  belongs_to :user
  has_many :wines, through: :collection_wine
end
