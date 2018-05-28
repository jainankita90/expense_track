json.extract! expense, :id, :member_name, :amount, :user_event_id, :category_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
