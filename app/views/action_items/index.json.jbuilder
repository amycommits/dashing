json.array!(@action_items) do |action_item|
  json.extract! action_item, :id, :accession_number, :description, :action_number, :project_id
  json.url action_item_url(action_item, format: :json)
end
