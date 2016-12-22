class RemoveAmountOfMoneyFromBankAccount < ActiveRecord::Migration[5.0]
  def change
    remove_column :bank_accounts, :amount_of_money, :decimal
  end
end
