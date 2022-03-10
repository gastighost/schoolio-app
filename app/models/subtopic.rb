class Subtopic < ApplicationRecord
  belongs_to :course
  has_many :lessons, dependent: :destroy

  validates :description, presence: true
end
