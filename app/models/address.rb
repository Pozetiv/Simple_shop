class Address < ApplicationRecord
  validates :first_name, :address, :last_name, :city, presence: true, length: { minimum: 2 }
  validates :options, length: { minimum: 2 }, allow_blank: true

  belongs_to :order
end
