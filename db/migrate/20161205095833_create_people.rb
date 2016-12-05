class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :full_name
      t.string :personal_phone
      t.string :work_phone
      t.integer :role
      t.text :comment

      t.timestamps
    end
  end
end
