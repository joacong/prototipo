json.array!(@messages) do |message|
  json.extract! message, :id, :user_id, :content, :active_workflow_step_id
  json.url message_url(message, format: :json)
end
