json.array!(@onions) do |onion|
  json.extract! onion, :description, :analisys_id
  json.url onion_url(onion, format: :json)
end
