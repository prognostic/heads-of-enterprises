class Company < ApplicationRecord
  has_many :bank_accounts
  has_many :branches, through: :bank_accounts, source: :branch
  has_many :assignments
  has_many :faces
end
