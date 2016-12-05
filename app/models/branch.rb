class Branch < ApplicationRecord
  has_many :bank_accounts
  has_many :banks, through: :bank_accounts, source: :company
end
