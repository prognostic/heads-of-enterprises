class Bank < ApplicationRecord
  belongs_to :city
  has_many :branches
end
