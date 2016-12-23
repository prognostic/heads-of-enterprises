require 'faker'

FactoryGirl.define do
  factory :status_log, class: 'BankAccountChangeStatusLog' do
    bank_account_id    { Random.rand(1...50) }
    change_date        { Faker::Date.between(3.year.ago, Date.today) }
    amount_in_account  { Faker::Number.decimal(7, 2) }
    message            { Faker::Lorem.sentence }
    status             { Random.rand(0...5) }
  end
end