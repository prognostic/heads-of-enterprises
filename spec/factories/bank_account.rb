require 'faker'

FactoryGirl.define do
  factory :bank_account, class: 'BankAccount' do
    opening_date  { Faker::Date.between(5.year.ago, Date.today) }
    status        { Random.rand(0...5) }
    comment       { Faker::Lorem.sentence }
    branch_id     { Random.rand(1...20) }
    company_id    { Random.rand(1...20) }
  end
end