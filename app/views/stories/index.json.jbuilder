json.array!(@stories) do |story|
  json.extract! story, :id, :nickname, :date, :time, :notes
  json.url story_url(story, format: :json)
end
