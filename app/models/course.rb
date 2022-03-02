class Course < ApplicationRecord
  belongs_to :user
  has_many :subtopics, dependent: :destroy
end
