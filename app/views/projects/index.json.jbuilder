json.array!(@projects) do |project|
  json.extract! project, :id, :accession_number, :title
  json.url project_url(project, format: :json)
end
