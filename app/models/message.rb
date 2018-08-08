class Message < ApplicationRecord
  validates :name,      presence: true, length: { minimum: 1 }
  validates :last_name, presence: true, length: { minimum: 1 }
  validates :msg_body,  presence: true, length: { minimum: 1 }
  validates :email,     presence: true, length: { minimum: 1 }
end
