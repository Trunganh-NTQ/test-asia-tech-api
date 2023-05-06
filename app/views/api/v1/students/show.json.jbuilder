# frozen_string_literal: true

json.status :success
json.data do
  json.partial! 'models/student', student: student
end
