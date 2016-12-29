require 'faker'

FactoryGirl.define do
  factory :face, class: 'Face' do
    full_name       { Faker::Name.name_with_middle }
    personal_phone  { Faker::PhoneNumber.cell_phone }
    work_phone      { Faker::PhoneNumber.cell_phone }
    comment         { Faker::Lorem.sentence }
    from_whom       { Faker::Name.name_with_middle }
  end
end