json.array!(@producers) do |producer|
  json.extract! producer, :id, :username, :email
  json.url producer_url(producer, format: :json)
end
