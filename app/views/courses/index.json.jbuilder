json.array!(@courses) do |course|
  json.extract! course, :id, :course_id, :course_name, :state
  json.url course_url(course, format: :json)
end
