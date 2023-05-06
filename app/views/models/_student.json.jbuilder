# frozen_string_literal: true

json.id student.id.to_s
json.name student.name
json.phone student.phone
json.grade student.grade
json.birthday student.birthday.strftime("%Y-%m-%d")
