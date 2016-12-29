require 'rails_helper'

RSpec.describe 'faces/edit', type: :view do
  before(:each) do
    @face = assign(:face, Face.create!)
  end

  it 'renders the edit face form' do
    render

    assert_select 'form[action=?][method=?]', face_path(@face), 'post' do
    end
  end
end
