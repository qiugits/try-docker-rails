json.extract! food, :id, :foodname, :created_at, :updated_at
json.url food_url(food, format: :json)
