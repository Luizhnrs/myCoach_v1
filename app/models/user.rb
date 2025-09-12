class User < ApplicationRecord

  enum role: { student: 0, mentor: 1 }

  has_many :mentorships_as_student, class_name: "Mentorship", foreign_key: "student_id"
  has_many :mentorships_as_mentor, class_name: "Mentorship", foreign_key: "mentor_id"
  has_many :lessons_as_student, class_name: "Lesson", foreign_key: "student_id"
  has_many :lessons_as_mentor, class_name: "Lesson", foreign_key: "mentor_id"

  # Validações
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true
end
