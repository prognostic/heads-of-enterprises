require 'faker'

FactoryGirl.define do
  factory :question, class: 'Question' do
    name  { Faker::Lorem.sentence }
  end
end