json.array!(@events) do |event|
  json.extract! event, :id, :module, :category, :supervisor, :day, :time, :duration
  json.url event_url(event, format: :json)
end
