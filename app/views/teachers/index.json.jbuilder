json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :id_number, :email
  json.url teacher_url(teacher, format: :json)
end
