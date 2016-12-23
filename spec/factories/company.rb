require 'faker'

FactoryGirl.define do
  factory :company, class: 'Company' do
    title ''
    inn ''
    address ''
    registration_date ''
    okved ''
    comment ''
    phones ''
    website ''
    kind ''
  end
end