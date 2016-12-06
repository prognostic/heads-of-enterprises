class Face < ApplicationRecord
  belongs_to :company
  has_many :assignments
end
