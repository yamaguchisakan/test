json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :price, :nicotin, :tar, :maker_id
  json.url brand_url(brand, format: :json)
end
