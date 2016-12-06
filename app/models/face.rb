class Face < ApplicationRecord
  belongs_to :company
  has_many :assignments

  has_attached_file :passport, styles: { medium: "600x600>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :passport, content_type: /\Aimage\/.*\z/
end
