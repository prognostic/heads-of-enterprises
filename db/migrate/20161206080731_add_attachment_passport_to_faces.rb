class AddAttachmentPassportToFaces < ActiveRecord::Migration
  def self.up
    change_table :faces do |t|
      t.attachment :passport
    end
  end

  def self.down
    remove_attachment :faces, :passport
  end
end
