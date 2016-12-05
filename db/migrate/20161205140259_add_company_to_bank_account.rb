class AddCompanyToBankAccount < ActiveRecord::Migration[5.0]
  def change
    add_reference :bank_accounts, :company, foreign_key: true
  end
end
