json.array!(@time_horizons) do |time_horizon|
  json.extract! time_horizon, :id, :year_a, :year_b, :year_c, :year_d
  json.url time_horizon_url(time_horizon, format: :json)
end
