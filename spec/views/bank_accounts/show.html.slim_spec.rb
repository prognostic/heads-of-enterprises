require 'rails_helper'

RSpec.describe "bank_accounts/show", :type => :view do
  before(:each) do
    @bank_account = assign(:bank_account, BankAccount.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
