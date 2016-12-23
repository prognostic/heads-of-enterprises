FactoryGirl.define do
  factory :face, class: 'Face' do
    full_name 'some name'
    personal_phone '98761412143'
    work_phone '98761412543'
    comment 'Комментарий'
  end
end