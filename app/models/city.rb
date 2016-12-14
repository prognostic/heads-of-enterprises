# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ApplicationRecord
  paginates_per 25

  has_many :banks,  dependent: :destroy
end
