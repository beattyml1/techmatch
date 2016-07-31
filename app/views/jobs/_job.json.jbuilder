json.extract! job, :id, :title, :hook, :description, :company_id, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)