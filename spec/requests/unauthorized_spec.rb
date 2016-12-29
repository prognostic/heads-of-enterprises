require 'rails_helper'

RSpec.describe FacesController, type: :controller do
  describe 'anonymous user' do
    before :each do
      login_with nil
    end

    it 'should be redirected to signin' do
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
