json.array!(@men_stores) do |men_store|
  json.extract! men_store, :id
  json.url men_store_url(men_store, format: :json)
end
