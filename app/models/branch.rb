class Branch < ApplicationRecord
  belongs_to :bank
  has_many :bank_accounts
end
