json.array!(@active_workflow_steps) do |active_workflow_step|
  json.extract! active_workflow_step, :id, :number, :workflow_template_id, :active_workflow_id
  json.url active_workflow_step_url(active_workflow_step, format: :json)
end
