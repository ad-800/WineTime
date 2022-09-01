class Wine < ApplicationRecord
  has_one_attached :photo
  has_many :collection_wines
end
