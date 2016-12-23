require 'faker'

FactoryGirl.define do
  factory :company, class: 'Company' do
    title              { Faker::Company.name }
    inn                { Faker::Number.number(10) }
    address            { Faker::Address.street_address }
    registration_date  { Faker::Date.between(10.year.ago, Date.today) }
    okved              { Faker::Number.decimal(2) }
    comment            { Faker::Lorem.sentence }
    phones             { Faker::PhoneNumber.cell_phone }
    website            { Faker::Internet.domain_name }
    kind               { Random.rand(0...1) }
  end
end