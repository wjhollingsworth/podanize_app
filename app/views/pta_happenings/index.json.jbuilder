json.array!(@pta_happenings) do |pta_happening|
  json.extract! pta_happening, :id, :name, :content, :newsletter_id
  json.url pta_happening_url(pta_happening, format: :json)
end
