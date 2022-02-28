class Lesson < ApplicationRecord
  belongs_to :subtopic
  has_many :bookings
end
