json.extract! campaign, :id, :title, :start_date, :end_date, :theaters, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)