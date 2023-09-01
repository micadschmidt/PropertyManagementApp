class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :property_type, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :address, presence: true
  validates :area, numericality: { greater_than: 0 }
  validates :rooms, numericality: { greater_than_or_equal_to: 0 }
  validates :bathrooms, numericality: { greater_than_or_equal_to: 0 }
  validates :photos, presence: true
end
