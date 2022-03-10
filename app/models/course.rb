class Course < ApplicationRecord
  belongs_to :user
  has_many :subtopics, dependent: :destroy

  validates :school_year, :subject, :topic, :performance_level, presence: true

  validates :school_year, inclusion: { in: 1..13, message: "Please pick a year level from 1 to 13" }

  validates :performance_level, inclusion: { in: 1..10, message: "Pick a value from 1 to 10" }

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_subject_and_topic_and_school_year,
    against: [ :subject, :topic, :school_year ],
    using: {
      tsearch: { prefix: true }
    }
end
