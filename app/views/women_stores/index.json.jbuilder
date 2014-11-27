json.array!(@women_stores) do |women_store|
  json.extract! women_store, :id, :item_name, :image
  json.url women_store_url(women_store, format: :json)
end
