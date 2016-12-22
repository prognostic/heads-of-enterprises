require 'rails_helper'

RSpec.describe "BankAccounts", :type => :request do
  describe "GET /control/bank_accounts" do
    it "works! (now write some real specs)" do
      get bank_accounts_path
      expect(response.status).to be(200)
    end
  end
end
