class Product < ApplicationRecord
  scope :top_reviews, -> { where(rating: 5) }
  scope :three_recent, -> { order(created_at: :desc).limit(3)}
  scope :made_in_the_usa, -> { where(country_of_origin: "USA")}
  has_many :reviews, dependent: :destroy
  
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true
  validates_length_of :name, maximum: 100

  before_save(:titleize_product)

  private
  def titleize_product
    self.name = self.name.titleize
  end
end