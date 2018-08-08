class Product < ApplicationRecord
  validates :name,        presence: true, length: {minimum: 2}
  validates :description, presence: true, length: {minimum: 2}
  validates :price,       presence: true
  validates :category,    presence: true

  has_many :order_items
  has_many :orders

  mount_uploader :image, ImageUploader

  Category_name = %w[Souvenirs Сups Caps Pendents]

  extend FriendlyId
  friendly_id :name
end
