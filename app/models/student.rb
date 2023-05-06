class Student < ApplicationRecord
  # configuration
  # relationship
  # validates
  validates :name, length: { maximum: 255 }, presence: true
  validates :phone, length: { maximum: 50 }
  validates :grade, inclusion: { in: 6..9 }
  # scope
end
