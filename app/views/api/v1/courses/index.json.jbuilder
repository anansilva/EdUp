json.array! @courses do |course|
  json.extract! course, :publisher_id, :id, :name, :description, :public_status
  json.content course.contents do |content|
    json.extract! content, :name, :description, :video, :video_link
  end
  json.students course.course_students do |course_students|
    json.extract! course_students.student, :email
    json.extract! course_students, :accessed
  end
end

