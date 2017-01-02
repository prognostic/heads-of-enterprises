require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :text => "MyText",
      :question => nil,
      :company => nil
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "textarea#answer_text[name=?]", "answer[text]"

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"

      assert_select "input#answer_company_id[name=?]", "answer[company_id]"
    end
  end
end
