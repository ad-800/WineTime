class Wine < ApplicationRecord
  has_one_attached :photo
  has_many :collection_wines

  include PgSearch::Model

  pg_search_scope :search_wines,
    against: [ :name, :color, :country, :region ],
    using: {
      tsearch: { prefix: true }
    }
end
