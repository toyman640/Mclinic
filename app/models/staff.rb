class Staff < ApplicationRecord
  has_secure_password :password, validations: true
  validates :username, presence: true, uniqueness: true
end
