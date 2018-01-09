class CodeSchool < ApplicationRecord
  has_many :students, class_name: 'User'
end
