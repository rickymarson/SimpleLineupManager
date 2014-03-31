json.array!(@editors) do |editor|
  json.extract! editor, :id, :username, :email
  json.url editor_url(editor, format: :json)
end
