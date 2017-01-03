# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Question < ApplicationRecord
  has_one :answers
end
