json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :student_id, :event_id
  json.url attendance_url(attendance, format: :json)
end
