class Course < ApplicationRecord
  belongs_to :user
  has_many :subtopics
end
