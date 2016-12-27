# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord
  include PublicActivity::Model
  tracked

  has_and_belongs_to_many :faces

  validates :name, presence: true

  has_paper_trail
end