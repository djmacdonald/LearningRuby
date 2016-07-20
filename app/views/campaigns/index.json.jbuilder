json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :title, :start_date, :end_date, :theaters
  json.url campaign_url(campaign, format: :json)
end
