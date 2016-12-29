require 'rails_helper'

RSpec.describe 'faces/new', type: :view do
  before(:each) do
    assign(:face, Face.new)
  end

  it 'renders new face form' do
    render

    assert_select 'form[action=?][method=?]', faces_path, 'post' do
    end
  end
end
