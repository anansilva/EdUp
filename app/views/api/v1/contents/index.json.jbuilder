json.array! @contents do |content|
  json.extract! content, :name, :description, :video, :video_link
end

