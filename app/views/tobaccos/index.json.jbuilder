json.array!(@tobaccos) do |tobacco|
  json.extract! tobacco, :id, :account_id, :brand_id
  json.url tobacco_url(tobacco, format: :json)
end
