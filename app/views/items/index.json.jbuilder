json.array!(@items) do |item|
  json.extract! item, :id, :name, :size, :price, :likes, :availability, :visits_count
  json.url item_url(item, format: :json)
end
