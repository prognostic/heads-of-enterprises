class Face < ApplicationRecord
  has_many :assignments

  has_attached_file :passport, styles: { medium: "600x600>", thumb: "300x300>", small: "100x100>"  }, default_url: "missing_avatar.png"
  validates_attachment_content_type :passport, content_type: /\Aimage\/.*\z/
end
