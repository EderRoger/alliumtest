json.array!(@onion_groups) do |onion_group|
  json.extract! onion_group, :analysis_id, :name, :description
  json.url onion_group_url(onion_group, format: :json)
end
