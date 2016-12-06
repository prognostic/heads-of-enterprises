class RenamePersonToFace < ActiveRecord::Migration[5.0]
  def change
    rename_table :people, :faces
  end
end
