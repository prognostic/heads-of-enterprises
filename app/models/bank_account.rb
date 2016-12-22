# == Schema Information
#
# Table name: bank_accounts
#
#  id           :integer          not null, primary key
#  opening_date :date
#  status       :integer
#  comment      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  branch_id    :integer
#  company_id   :integer
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

  after_initialize :set_defaults, unless: :persisted?

  include PublicActivity::Model
  tracked

  belongs_to :branch
  belongs_to :company
  has_many :bank_account_change_status_logs
  accepts_nested_attributes_for :bank_account_change_status_logs, :reject_if => proc { |att| att[:status].blank? }, allow_destroy: true

  validates :branch_id, presence: true
  validates :company_id, presence: true

  has_paper_trail

  enum status: [:created, :working, :inactive, :transfer_certificate, :no_money, :locked]

  def self.i18n_statuses(hash = {})
    statuses.keys.each { |key| hash[I18n.t("statuses.#{key}")] = key }
    hash
  end

  def set_defaults
    self.status  ||= 0
  end
end
