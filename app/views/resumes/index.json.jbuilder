json.array!(@resumes) do |resume|
  json.extract! resume, :id, :user_id, :fields
  json.url resume_url(resume, format: :json)
end
