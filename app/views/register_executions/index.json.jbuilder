json.array!(@register_executions) do |register_execution|
  json.extract! register_execution, :day_number, :analisys_execution_id, :onion_id
  json.url register_execution_url(register_execution, format: :json)
end
