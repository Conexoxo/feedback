json.extract! student, :id, :run, :name, :last_name, :born, :created_at, :updated_at
json.url student_url(student, format: :json)
