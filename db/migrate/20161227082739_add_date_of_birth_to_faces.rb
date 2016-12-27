class AddDateOfBirthToFaces < ActiveRecord::Migration[5.0]
  def change
    add_column :faces, :date_of_birth, :date
  end
end