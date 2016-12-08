class Branch < ApplicationRecord
  belongs_to :bank
  has_many :bank_accounts
  has_many :banks, through: :bank_accounts, source: :company
end
