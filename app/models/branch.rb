# == Schema Information
#
# Table name: branches
#
#  id         :integer          not null, primary key
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bank_id    :integer
#
# Indexes
#
#  index_branches_on_bank_id  (bank_id)
#
# Foreign Keys
#
#  fk_rails_4ac30aa3f9  (bank_id => banks.id)
#

class Branch < ApplicationRecord
  paginates_per 25

  include PublicActivity::Model
  tracked

  belongs_to :bank
  has_many :bank_accounts

  has_paper_trail
end
