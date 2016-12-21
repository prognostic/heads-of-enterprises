# == Schema Information
#
# Table name: faces
#
#  id                    :integer          not null, primary key
#  full_name             :string
#  personal_phone        :string
#  work_phone            :string
#  comment               :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  passport_file_name    :string
#  passport_content_type :string
#  passport_file_size    :integer
#  passport_updated_at   :datetime
#  from_whom             :string
#

class Face < ApplicationRecord
  include PublicActivity::Model
  tracked

  has_many :assignments, inverse_of: :face

  validates :full_name, presence: true

  has_paper_trail

  has_attached_file :passport, styles: {medium: "600x600>", thumb: "300x300>", small: "100x100>"}, default_url: "missing_avatar.png"
  validates_attachment_content_type :passport, content_type: /\Aimage\/.*\z/
end