json.array!(@active_workflows) do |active_workflow|
  json.extract! active_workflow, :id, :name
  json.url active_workflow_url(active_workflow, format: :json)
end
