# == Schema Information
#
# Table name: banks
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :integer
#
# Indexes
#
#  index_banks_on_city_id  (city_id)
#
# Foreign Keys
#
#  fk_rails_7d6d660fc8  (city_id => cities.id)
#

class Bank < ApplicationRecord
  paginates_per 25

  belongs_to :city
  has_many :branches
end
