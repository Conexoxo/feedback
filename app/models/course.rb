class Course < ApplicationRecord
<<<<<<< HEAD
  has_many :comments, dependent: :destroy
=======
  has_many :student_courses
  has_many :teacher_courses
  has_many :comments
  has_many :students, through: :student_courses
  has_many :teachers, through: :teacher_courses
>>>>>>> 56d0a17c5bc229ad199dd81940324efeb5a05171
end
