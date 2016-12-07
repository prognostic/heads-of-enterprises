class City < ApplicationRecord
  has_many :banks,  dependent: :destroy
end
