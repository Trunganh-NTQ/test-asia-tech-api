class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  self.abstract_class = true
  self.inheritance_column = 'not_sti'

  def first_error_message
    self.errors.full_messages.first
  end
end
