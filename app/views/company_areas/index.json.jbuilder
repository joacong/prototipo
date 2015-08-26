json.array!(@company_areas) do |company_area|
  json.extract! company_area, :id, :name, :company_area_id
  json.url company_area_url(company_area, format: :json)
end
