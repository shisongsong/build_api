json.student do
  json.id @student.id
  json.name @student.name

  if @student.courses.empty?
    json.courses []
  else
    json.courses @student.courses do |course|
      json.id course.id
      json.name course.name

      json.teacher course.teacher, :id, :name
    end
  end
end
