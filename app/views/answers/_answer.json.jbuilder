json.extract! answer, :id, :text, :question_id, :company_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)