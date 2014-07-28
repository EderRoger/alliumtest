json.array!(@analyses) do |analysis|
  json.extract! analysis, :start_date, :end_date, :description
  json.url analysis_url(analysis, format: :json)
end
