# == Schema Information
#
# Table name: faces
#
#  id                    :integer          not null, primary key
#  full_name             :string
#  personal_phone        :string
#  work_phone            :string
#  role                  :integer
#  comment               :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  passport_file_name    :string
#  passport_content_type :string
#  passport_file_size    :integer
#  passport_updated_at   :datetime
#

class Face < ApplicationRecord
  paginates_per 25
  has_many :assignments, inverse_of: :face

  # TODO delete enum everywhere
  enum role: [:director, :founder, :restructuring, :working]

  has_attached_file :passport, styles: {medium: "600x600>", thumb: "300x300>", small: "100x100>"}, default_url: "missing_avatar.png"
  validates_attachment_content_type :passport, content_type: /\Aimage\/.*\z/

  validates :full_name, presence: true
end
