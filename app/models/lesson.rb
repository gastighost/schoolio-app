class Lesson < ApplicationRecord
  belongs_to :subtopic
  has_many :bookings, dependent: :destroy

  validates :date, :time, :duration, :max_capacity, presence: true
end
