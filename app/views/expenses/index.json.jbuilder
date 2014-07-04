json.array!(@expenses) do |expense|
  json.extract! expense, :id, :value
  json.url expense_url(expense, format: :json)
end
