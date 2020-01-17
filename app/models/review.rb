class Review < ApplicationRecord
    scope :sort_name, -> { order(name: :asc) }
    belongs_to :product
  end