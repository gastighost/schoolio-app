class Booking < ApplicationRecord
  belongs_to :lesson
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
