class Product < ApplicationRecord
  validates :name, length: {minimum: 2}, presence: true
  validates :description, length: {minimum: 2}, presence: true
  validates :price, presence: true

  mount_uploader :image, ImageUploader
end
