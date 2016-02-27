json.array!(@dashing_d3_examples) do |dashing_d3_example|
  json.extract! dashing_d3_example, :id, :name, :title, :cx, :cy, :x, :y, :width, :height, :radius, :action_number, :total_action, :elapsed_days, :total_days
  json.url dashing_d3_example_url(dashing_d3_example, format: :json)
end
