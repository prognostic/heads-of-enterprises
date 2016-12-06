class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.date :date
      t.integer :postion

      t.timestamps
    end
  end
end
