FactoryGirl.define do
  sequence :email do |n|
    "admin#{n}@gmail.com"
  end
end

FactoryGirl.define do
  factory :user, :class => 'User' do
    email
    password '12345678'
    password_confirmation '12345678'
  end
end