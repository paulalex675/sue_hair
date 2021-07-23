json.extract! job, :id, :charge, :expenses, :mileage, :notes, :created_at, :updated_at
json.url job_url(job, format: :json)
