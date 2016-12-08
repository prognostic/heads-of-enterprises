require 'rails_helper'

RSpec.describe "bank_accounts/new", :type => :view do
  before(:each) do
    assign(:bank_account, BankAccount.new())
  end

  it "renders new bank_account form" do
    render

    assert_select "form[action=?][method=?]", bank_accounts_path, "post" do
    end
  end
end
