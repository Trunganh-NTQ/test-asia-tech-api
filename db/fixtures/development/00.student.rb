# frozen_string_literal: true

skip_count = Student.pluck(:id).count

(100 - skip_count).times do |time|
  Student.seed do |s|
    s.name = Faker::Name.name
    s.phone = Faker::PhoneNumber.cell_phone_in_e164
    s.grade = rand(6..9)
    s.birthday = Faker::Date.birthday(min_age: 10, max_age: 15)
  end
end
