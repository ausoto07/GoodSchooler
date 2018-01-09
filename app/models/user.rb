class User < ApplicationRecord
  belongs_to :CodeSchool
  has_one :profile
end
