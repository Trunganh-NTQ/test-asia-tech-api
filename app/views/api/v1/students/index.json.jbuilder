# frozen_string_literal: true

json.status :success
json.meta do
  json.total_pages @students.total_pages
  json.current_page @students.current_page
  json.total_count @students.total_count
  json.limit_value @students.limit_value
end
json.data do
  json.array! @students do |student|
    json.partial! 'models/student', student: student
  end
end
