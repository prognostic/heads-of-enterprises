require 'rails_helper'

RSpec.describe "Banks", :type => :request do
  describe "GET /control/banks" do
    it "works! (now write some real specs)" do
      get banks_path
      expect(response.status).to be(200)
    end
  end
end
