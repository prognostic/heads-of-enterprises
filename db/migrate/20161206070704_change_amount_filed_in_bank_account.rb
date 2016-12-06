class ChangeAmountFiledInBankAccount < ActiveRecord::Migration[5.0]
  def change
    change_column :bank_accounts, :amount_of_money, :decimal, precision: 10, scale: 2
  end
end
