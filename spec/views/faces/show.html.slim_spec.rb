require 'rails_helper'

RSpec.describe "faces/show", :type => :view do
  before(:each) do
    @face = assign(:face, Face.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
