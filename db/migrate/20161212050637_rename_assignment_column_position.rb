class RenameAssignmentColumnPosition < ActiveRecord::Migration[5.0]
  def change
    rename_column :assignments, :postion, :position
  end
end
