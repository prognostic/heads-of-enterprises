class AddFaceToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_reference :assignments, :face, foreign_key: true
  end
end
