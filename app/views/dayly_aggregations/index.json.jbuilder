json.array!(@dayly_aggregations) do |dayly_aggregation|
  json.extract! dayly_aggregation, :id, :aggregation_day, :avg_interval, :avg_number, :avg_price, :account_id
  json.url dayly_aggregation_url(dayly_aggregation, format: :json)
end
