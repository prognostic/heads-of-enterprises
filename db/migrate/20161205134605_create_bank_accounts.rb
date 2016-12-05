class CreateBankAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_accounts do |t|
      t.date :opening_date
      t.integer :status
      t.float :amount_of_money
      t.text :comment

      t.timestamps
    end
  end
end
