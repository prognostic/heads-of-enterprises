class RemoveCompanyIdFromFaces < ActiveRecord::Migration[5.0]
  def change
    remove_index :faces, :company_id
    remove_column :faces, :company_id
  end
end
