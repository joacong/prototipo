json.array!(@workflow_templates) do |workflow_template|
  json.extract! workflow_template, :id, :name, :workflow_template_id
  json.url workflow_template_url(workflow_template, format: :json)
end
