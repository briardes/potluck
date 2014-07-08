json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :cost, :cooking_time, :prepping_time, :instructions, :user_id, :ingredients
  json.url recipe_url(recipe, format: :json)
end
