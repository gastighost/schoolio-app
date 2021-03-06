class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :courses, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :messages, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  validates :name, :age, :school_year, :years_of_study,
            :user_type, presence: true

  validates :school_year, inclusion: { in: 1..13,
                                       message: "Please pick a year level from 1 to 13" }

  validates :learning_type, inclusion: { in: %w[visual auditory reading writing kinesthetic] }

  validates :user_type, inclusion: { in: %w[teacher student] }
end
