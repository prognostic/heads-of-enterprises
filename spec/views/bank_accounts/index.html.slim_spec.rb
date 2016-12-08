require 'rails_helper'

RSpec.describe "bank_accounts/index", :type => :view do
  before(:each) do
    assign(:bank_accounts, [
      BankAccount.create!(),
      BankAccount.create!()
    ])
  end

  it "renders a list of bank_accounts" do
    render
  end
end
