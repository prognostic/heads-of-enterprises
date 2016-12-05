class RenameDepartmentToBranch < ActiveRecord::Migration[5.0]
  def change
    rename_table :departments, :branches
  end
end
