# == Schema Information
#
# Table name: bank_account_change_status_logs
#
#  id                :integer          not null, primary key
#  bank_account_id   :integer
#  change_date       :string           not null
#  amount_in_account :decimal(10, 2)
#  message           :text
#  status            :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_bank_account_change_status_logs_on_bank_account_id  (bank_account_id)
#

class BankAccountChangeStatusLog  < ActiveRecord::Base
  belongs_to :bank_account

  enum status: [:working, :inactive, :transfer_certificate, :no_money, :locked]
end
