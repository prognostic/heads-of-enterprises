require 'faker'

FactoryGirl.define do
  factory :bank, class: 'Bank' do
    name Faker::Bank.name
    city_id Random.rand(1...5)
  end
end