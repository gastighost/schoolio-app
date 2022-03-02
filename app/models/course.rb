class Course < ApplicationRecord
  belongs_to :user
  has_many :subtopics

  include PgSearch::Model
  pg_search_scope :search_by_subject_and_topic_and_school_year,
    against: [ :subject, :topic, :school_year ],
    using: {
      tsearch: { prefix: true }
    }
end
