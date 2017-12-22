json.array! @courses do |course|
  json.extract! course, :publisher_id, :id, :name, :description, :video, :video_link, :public_status
end
