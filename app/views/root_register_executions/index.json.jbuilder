json.array!(@root_register_executions) do |root_register_execution|
  json.extract! root_register_execution, :register_execution_id, :root_id
  json.url root_register_execution_url(root_register_execution, format: :json)
end
