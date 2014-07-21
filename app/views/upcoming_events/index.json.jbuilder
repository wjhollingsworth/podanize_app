json.array!(@upcoming_events) do |upcoming_event|
  json.extract! upcoming_event, :id, :name, :content, :newsletter_id
  json.url upcoming_event_url(upcoming_event, format: :json)
end
