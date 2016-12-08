require 'rails_helper'

RSpec.describe "banks/show", :type => :view do
  before(:each) do
    @bank = assign(:bank, Bank.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
