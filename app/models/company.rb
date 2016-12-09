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
  has_many :bank_accounts
  has_many :assignments
end
