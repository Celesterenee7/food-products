class Review < ApplicationRecord
    scope :sort_name, -> { order(name: :asc) }
    belongs_to :product

    validates :author, presence: true
    validates :rating, presence: true
    validates :content_body, presence: true
  end