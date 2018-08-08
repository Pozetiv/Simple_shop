class Product < ApplicationRecord
  validates :name,        presence: true, length: {minimum: 2}
  validates :description, presence: true, length: {minimum: 2}
  validates :price,       presence: true
  validates :category,    presence: true
  validates :quantity,    presence: true, numericality: { only_integer: true, greater_than: 0 }

  has_many :order_items
  has_many :orders, through: :order_items
  has_many :images, inverse_of: :product

  CategoryName = %w[Souvenirs Сups Caps Pendents]

  extend FriendlyId
  friendly_id :name

  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
end
