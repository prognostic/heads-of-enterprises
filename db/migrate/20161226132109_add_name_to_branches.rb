class AddNameToBranches < ActiveRecord::Migration[5.0]
  def change
    add_column :branches, :name, :string
  end
end
