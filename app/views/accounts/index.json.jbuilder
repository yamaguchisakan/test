json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :age, :email, :reference_time
  json.url account_url(account, format: :json)
end
