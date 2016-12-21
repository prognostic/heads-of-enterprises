class RemoveRoleFromFaces < ActiveRecord::Migration[5.0]
  def change
    remove_column :faces, :role, :integer
  end
end
