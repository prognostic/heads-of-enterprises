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
#  phones            :string
#  website           :string
#  kind              :integer
#

class Company < ApplicationRecord
  include PublicActivity::Model
  tracked

  has_many :bank_accounts
  has_many :assignments, inverse_of: :company
  has_many :answers
  accepts_nested_attributes_for :assignments, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
  validates :inn, numericality: true

  has_paper_trail

  enum kind: [:individual_entrepreneur, :ltd]

  def self.i18n_kinds(hash = {})
    kinds.keys.each { |key| hash[I18n.t("kinds.#{key}")] = key }
    hash
  end
end