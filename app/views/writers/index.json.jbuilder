json.array!(@writers) do |writer|
  json.extract! writer, :id, :username, :email
  json.url writer_url(writer, format: :json)
end
