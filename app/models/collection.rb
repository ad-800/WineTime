class Collection < ApplicationRecord
  belongs_to :user
  has_many :collection_wines, dependent: :destroy
  has_many :wines, through: :collection_wines
  validates :title, presence: true

  include PgSearch::Model

  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
