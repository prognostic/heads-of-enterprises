require 'faker'

FactoryGirl.define do
  factory :assignment, class: 'Assignment' do
    date        { Faker::Date.between(5.year.ago, Date.today) }
    position    { Random.rand(0...1) }
    face_id     { Random.rand(1...45) }
    company_id  { Random.rand(1...20) }
  end
end