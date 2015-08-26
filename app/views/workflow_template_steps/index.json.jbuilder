json.array!(@workflow_template_steps) do |workflow_template_step|
  json.extract! workflow_template_step, :id, :workflow_template_step_id
  json.url workflow_template_step_url(workflow_template_step, format: :json)
end
