class AddBranchToBankAccount < ActiveRecord::Migration[5.0]
  def change
    add_reference :bank_accounts, :branch, foreign_key: true
  end
end
