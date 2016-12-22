require 'rails_helper'

feature 'AddNewFace', type: :feature do
  it 'should create a new face with a logged in user' do
    login_as create(:user), scope: :user

    visit new_face_path
    puts page.body

    within '#new_face' do
      fill_in 'face_full_name', with: 'John Connor'
    end

    click_link_or_button 'add_new_face'

    #expect(Face.count).to eq(1)
    #expect(Face.first.full_name).to eq('John Connor')

  end
end