class AddBankToBranch < ActiveRecord::Migration[5.0]
  def change
    add_reference :branches, :bank, foreign_key: true
  end
end
