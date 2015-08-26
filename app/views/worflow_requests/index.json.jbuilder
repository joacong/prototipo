json.array!(@worflow_requests) do |worflow_request|
  json.extract! worflow_request, :id, :user_id
  json.url worflow_request_url(worflow_request, format: :json)
end
