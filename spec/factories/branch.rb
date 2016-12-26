require 'faker'

FactoryGirl.define do
  factory :branch, class: 'Branch' do
    name    { Faker::Bank.name }
    address { Faker::Address.street_address }
    bank_id { Random.rand(1...10) }
  end
end