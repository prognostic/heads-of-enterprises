require 'rails_helper'

RSpec.describe "Assignments", :type => :request do
  describe "GET /assignments" do
    it "works! (now write some real specs)" do
      get assignments_path
      expect(response.status).to be(200)
    end
  end
end