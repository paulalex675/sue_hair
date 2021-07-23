json.extract! expense, :id, :item, :cost, :job_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
