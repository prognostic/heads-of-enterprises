class CreateJoinTableFaceRole < ActiveRecord::Migration[5.0]
  def change
    create_join_table :faces, :roles do |t|
      t.index [:face_id, :role_id]
      t.index [:role_id, :face_id]
    end
  end
end
