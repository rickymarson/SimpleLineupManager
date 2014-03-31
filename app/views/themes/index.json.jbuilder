json.array!(@themes) do |theme|
  json.extract! theme, :id, :theme
  json.url theme_url(theme, format: :json)
end
