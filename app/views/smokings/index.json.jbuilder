json.array!(@smokings) do |smoking|
  json.extract! smoking, :id, :smoke_date, :smoke_time, :smoke_interval, :latitude, :longitude, :tobacco_id
  json.url smoking_url(smoking, format: :json)
end
