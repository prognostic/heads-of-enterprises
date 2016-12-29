require 'rails_helper'

RSpec.describe 'bank_accounts/edit', type: :view do
  before(:each) do
    @bank_account = assign(:bank_account, BankAccount.create!)
  end

  it 'renders the edit bank_account form' do
    render

    assert_select 'form[action=?][method=?]',
                  bank_account_path(@bank_account), 'post' do
    end
  end
end
