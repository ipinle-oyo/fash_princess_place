json.array!(@kids_stores) do |kids_store|
  json.extract! kids_store, :id, :item_name, :image
  json.url kids_store_url(kids_store, format: :json)
end
