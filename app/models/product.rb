class Product < ApplicationRecord
  scope :most_reviws, -> { where("reviews > ?", 10) }
  scope :five_recent, -> { order(created_at: :desc).limit(5)}
  has_many :reviews, dependent: :destroy
end