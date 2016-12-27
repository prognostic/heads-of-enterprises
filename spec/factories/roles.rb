require 'faker'

FactoryGirl.define do
  factory :role, class: 'Role' do
    name  { Faker::Company.profession }
  end
end