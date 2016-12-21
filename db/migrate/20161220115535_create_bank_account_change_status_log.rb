class CreateBankAccountChangeStatusLog < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_account_change_status_logs do |t|
      t.references :bank_account, index: true
      t.string :change_date, null: false
      t.decimal :amount_in_account, precision: 10, scale: 2
      t.text :message
      t.integer :status, null: false

      t.timestamps
    end
  end
end