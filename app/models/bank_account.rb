# == Schema Information
#
# Table name: bank_accounts
#
#  id              :integer          not null, primary key
#  opening_date    :date
#  status          :integer
#  amount_of_money :decimal(10, 2)
#  comment         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  branch_id       :integer
#  company_id      :integer
#
# Indexes
#
#  index_bank_accounts_on_branch_id   (branch_id)
#  index_bank_accounts_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_8b2570dab7  (branch_id => branches.id)
#  fk_rails_90c4e0ac85  (company_id => companies.id)
#

class BankAccount < ApplicationRecord
  paginates_per 25

  include PublicActivity::Model
  tracked

  belongs_to :branch
  belongs_to :company

  validates :branch_id, presence: true
  validates :company_id, presence: true
end
