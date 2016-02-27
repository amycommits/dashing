json.array!(@user_stories) do |user_story|
  json.extract! user_story, :id, :title, :content, :user_id
  json.url user_story_url(user_story, format: :json)
end
