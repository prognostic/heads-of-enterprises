require 'rails_helper'

RSpec.describe 'faces/index', type: :view do
  before(:each) do
    assign(:faces, [Face.create!, Face.create!])
  end

  it 'renders a list of faces' do
    render
  end
end
