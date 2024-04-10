class Patient < ApplicationRecord
  validates :fullname, presence: true
  validates :age, presence: true
end