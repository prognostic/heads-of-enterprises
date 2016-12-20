class AddFromWhomToFaces < ActiveRecord::Migration[5.0]
  def change
    add_column :faces, :from_whom, :string
  end
end
