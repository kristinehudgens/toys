json.array!(@kristine_toys) do |kristine_toy|
  json.extract! kristine_toy, :id, :name, :toy_type, :date_last_played_with, :favorite
  json.url kristine_toy_url(kristine_toy, format: :json)
end
