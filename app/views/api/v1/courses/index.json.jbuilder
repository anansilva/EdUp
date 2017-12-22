json.array! @courses do |course|
  json.extract! course, :id, :name, :description, :video, :video_link, :public_status
end
