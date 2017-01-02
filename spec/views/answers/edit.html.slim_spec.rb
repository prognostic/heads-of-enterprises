require 'rails_helper'

RSpec.describe "answers/edit", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :text => "MyText",
      :question => nil,
      :company => nil
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "textarea#answer_text[name=?]", "answer[text]"

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"

      assert_select "input#answer_company_id[name=?]", "answer[company_id]"
    end
  end
end
