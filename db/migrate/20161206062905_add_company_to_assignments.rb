class AddCompanyToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_reference :assignments, :company, foreign_key: true
  end
end
