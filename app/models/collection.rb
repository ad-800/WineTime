class Collection < ApplicationRecord
  belongs_to :user
  has_many :collection_wines, dependent: :destroy
  has_many :wines, through: :collection_wines
  validates :title, presence: true
end
