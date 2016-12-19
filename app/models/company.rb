# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  title             :string
#  inn               :string
#  address           :string
#  registration_date :date
#  okved             :string
#  comment           :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Company < ApplicationRecord
  paginates_per 25

  include PublicActivity::Model
  tracked

  has_many :bank_accounts
  has_many :assignments, inverse_of: :company
  accepts_nested_attributes_for :assignments, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
  validates :inn, numericality: true
end
