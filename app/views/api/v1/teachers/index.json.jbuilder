json.teachers do
  json.array! @teachers do |teacher|
    json.id teacher.id
    json.name teacher.name

    json.courses teacher.courses, :id, :name
  end
end
