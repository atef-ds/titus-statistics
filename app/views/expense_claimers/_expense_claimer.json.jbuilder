json.extract! expense_claimer, :id, :expense_date, :claimer_name, :description, :approved, :amount_cents, :created_at, :updated_at
json.url expense_claimer_url(expense_claimer, format: :json)
