json.array!(@documents) do |document|
  json.extract! document, :id, :active_workflow_id
  json.url document_url(document, format: :json)
end
