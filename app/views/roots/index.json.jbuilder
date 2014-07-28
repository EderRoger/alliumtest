json.array!(@roots) do |root|
  json.extract! root, :size, :onion_id
  json.url root_url(root, format: :json)
end
