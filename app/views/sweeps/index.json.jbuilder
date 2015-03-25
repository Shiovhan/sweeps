json.array!(@sweeps) do |sweep|
  json.extract! sweep, :id, :title, :date
  json.url sweep_url(sweep, format: :json)
end
