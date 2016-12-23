FactoryGirl.define do
  factory :user, class: 'User' do
    email 'admin@example.com'
    password '123123123'
    password_confirmation '123123123'
  end
end