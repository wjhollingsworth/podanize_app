json.array!(@shoutouts) do |shoutout|
  json.extract! shoutout, :id, :name, :content, :newsletter_id
  json.url shoutout_url(shoutout, format: :json)
end
