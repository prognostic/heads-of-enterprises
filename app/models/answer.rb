# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  text        :text
#  question_id :integer
#  company_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_answers_on_company_id   (company_id)
#  index_answers_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_0b5b3b01c3  (company_id => companies.id)
#  fk_rails_3d5ed4418f  (question_id => questions.id)
#

class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :company
end
