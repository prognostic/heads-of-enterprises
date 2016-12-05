class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :title
      t.string :inn
      t.string :address
      t.date :registration_date
      t.string :okved
      t.text :comment

      t.timestamps
    end
  end
end
